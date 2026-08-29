# Scenario 03 — Fast Flux DNS
## Final Incident Response Report

**Incident Responder / Defender:** Sonia  
**Scenario:** DNSentinel Scenario 03 — Fast Flux DNS  
**MITRE ATT&CK:** T1568.001 — Dynamic Resolution: Fast Flux DNS  
**SOC handoff disposition:** INCONCLUSIVE — ESCALATION WARRANTED  
**Final IR disposition:** **CONTROLLED / EXPECTED SCENARIO ACTIVITY — NO CONTAINMENT REQUIRED**  
**Malicious attribution:** Not established  

## Executive summary

IR independently reproduced the core DNS and network behavior raised by the SOC handoff. Defender-side AWS Resolver Query Logs showed the Scenario 03 domain returning all three reported public A-record addresses, and VPC Flow Logs showed `dns-soc-victim01` (`10.50.30.20`) connecting to those same addresses over allowed TCP/80. Exact AWS `query_timestamp` values demonstrated repeated answer changes.

Historical Resolver Query Log events did not expose TTL, so IR did not claim an incident-time TTL value. A later live defender verification from the victim observed a TTL of 60 seconds for the Scenario 03 domain.

Splunk did not contain endpoint/process telemetry for the victim. IR therefore pivoted to defender-accessible local Linux evidence. The victim's root shell history contained `dig` and `curl` commands matching the observed DNS-to-HTTP pattern, including repeated 20-second loops and the explicit labels `SCENARIO 03 OFFICIAL VICTIM FOLLOW-UP` and `OFFICIAL VICTIM FOLLOW-UP COMPLETE`. This strongly supports deliberate test activity. However, shell history did not contain per-command timestamps, and DNS activity was visible before the only confirmed interactive SSM session, so the earliest activity cannot be attributed to a specific user/session.

At the time of response decision, the activity was inactive in DNS telemetry, inactive in VPC Flow telemetry, and no matching `dig`/`curl` process was running. The active Unbound RPZ file contained no Scenario 03 rule, Unbound configuration was valid and active, unrelated DNS resolved normally, and the Scenario 03 domain resolved normally to a public address rather than the sinkhole.

**Decision:** containment was not necessary or proportionate. No RPZ rule, resolver-policy change, host isolation, sinkhole enforcement, reload, or restart was performed.

## Evidence-backed findings

1. **Three A-record answers independently validated**
   - `13.220.94.188`
   - `52.73.218.100`
   - `54.81.98.44`

2. **Answer churn independently validated** using AWS `query_timestamp`.

3. **Victim-to-destination correlation validated**: `10.50.30.20` connected to all three addresses on TCP/80 with action `allowed`.

4. **Single-client scope validated**: only `10.50.30.20` appeared in the expanded Unbound scope search.

5. **Current activity inactive**: no recent matching DNS activity, no recent matching network activity, and no active matching `dig`/`curl` process.

6. **Endpoint context strongly supports test activity**: `/root/.bash_history` contained matching `dig`/`curl` commands and explicit Scenario 03 follow-up labels.

7. **Interactive access context**: CloudTrail recorded an SSM `StartSession` at `2026-08-28 12:51:53 UTC`; local journal recorded root-session creation at `12:52:05 UTC`. This session occurred after the earliest observed activity, so it does not explain the entire timeline.

8. **Cron did not explain the behavior**: no Scenario 03 domain, `dig`, `curl`, or resolver reference was found in root/system cron configuration.

9. **No Scenario 03 containment rule existed** in active `/etc/unbound/rpz/dns-soc.rpz`.

10. **Resolver safe state verified**: `unbound-checkconf` returned no errors, Unbound was active, unrelated DNS worked from the victim, and the Scenario 03 domain resolved normally.

## Historical vs live TTL

- **Historical evidence:** TTL was not exposed in the preserved Resolver Query Log events searched by IR.
- **Live post-investigation check:** victim query through `10.50.30.10` returned `flux.soclab.abdul4rehman215.tech` with TTL `60` and public answer `52.73.218.100` at the time of verification.
- IR therefore does **not** retroactively assert that every historical answer had TTL 60.

## Classification

**Behavior classification:** Confirmed Fast Flux-like DNS/network behavior.  
**Context classification:** Strongly consistent with controlled Scenario 03 victim-follow-up/test activity.  
**Malicious attribution:** Low / unsupported.  
**Compromise status:** No defender evidence of malware compromise or malicious C2.  

## Response decision

**No containment required.**

Rationale:
- activity was historical/inactive;
- scope was one lab victim;
- no active matching process remained;
- defender-discovered endpoint history explicitly identified Scenario 03 victim-follow-up commands;
- no malware, malicious C2 ownership, or unauthorized intent was proven;
- an RPZ/sinkhole change would introduce unnecessary configuration risk without a current security need.

Because no enforcing action was proposed, the mandatory human-approval gate was not crossed.

## Reset / safe-state record

No temporary Scenario 03 containment was applied, so no rollback/reset action was required. IR still verified the equivalent safe state:
- active RPZ file contained no `flux.soclab.abdul4rehman215.tech` rule;
- only the existing `rpz-test... -> 10.50.30.30` rule was present;
- Unbound configuration passed validation;
- Unbound service was active;
- unrelated DNS worked from the victim;
- Scenario 03 domain resolved to a public A record, not the sinkhole.

## Residual risk and limitations

- Historical TTL was unavailable from preserved Resolver Query Log events.
- The earliest portion of activity cannot be tied to a specific interactive user/session from available defender evidence.
- Bash history lacked per-command timestamps, so history lines cannot be assigned exact execution times.
- Splunk lacked endpoint/process telemetry for the victim during the incident window.
- The evidence supports controlled test activity strongly, but IR intentionally does not use hidden operator ground truth to fill attribution gaps.

## Final conclusion

The SOC escalation was justified because the DNS/network behavior was real and unusual. IR independently confirmed the Fast Flux-like pattern, strengthened DNS-answer evidence, correlated network follow-up, scoped the affected client, investigated endpoint context, and verified current and resolver safe state. Defender-discovered endpoint evidence strongly supports a controlled Scenario 03 test workflow rather than malware-driven malicious C2. No containment was required, and the resolver remained in normal safe operation.
