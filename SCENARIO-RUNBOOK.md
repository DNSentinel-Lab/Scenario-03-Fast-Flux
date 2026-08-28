# Scenario 03 Runbook — Fast Flux DNS

**Scenario status:** 🟠 Ready for official execution  
**Infrastructure:** ✅ Validated  
**Detection Engineering:** ✅ Complete  
**Official SOC / IR:** ⏳ Pending

## 1. Objective — ✅ Ready

Investigate controlled Fast Flux-like DNS behavior by combining changing A answers, client follow-up network destinations, benign dynamic-DNS context and human response decisions.

## 2. Architecture — ✅ Implemented

- victim: `10.50.30.20`;
- defender resolver: `10.50.30.10`;
- controlled flux nodes: `10.60.10.21–23` with public HTTP reachability;
- `flux.soclab.abdul4rehman215.tech` with 60-second TTL;
- Route 53 UPSERT rotation;
- Splunk Resolver + VPC Flow + AI evidence.

## 3. Roles — ✅ Locked

| Role | Owner |
|---|---|
| Attack / Simulation | Lubaba |
| SOC Analyst / Hunter | Abdul-Rehman |
| Detection Engineer | Musfira |
| IR / Defender | Sonia |

## 4. Infrastructure / pre-flight — ✅ Validated

The three-node pool, SG, HTTP responses, Route 53 update path, authoritative answers, victim cache refresh, follow-up connections and VPC Flow evidence have been proven.

## 5. Baseline — ✅ Complete

Normal victim network/DNS behavior was measured before final thresholds were frozen.

## 6. Hunting — ✅ Complete

Public destination churn, Resolver answer churn and DNS-answer/network matching were tested. Legitimate dynamic services were found and used for tuning.

## 7. Detection — ✅ Complete

Detection v1.0: [`spl/detection.spl`](spl/detection.spl)

```text
5-minute window
unique_matched_ips >= 2
matched_connections >= 3
A + NOERROR
public answers only
known benign dynamic domains excluded
```

## 8. Alert — ✅ Complete

Scheduled every five minutes, Number of Results > 0, Triggered Alerts + webhook.

## 9. AI assistance — ✅ Engineering validated

Shared AI bridge receives the Scenario 03 result contract and writes advisory summaries to `dns_soc_ai`.

## 10. Dashboard — ✅ Complete

Final JSON: [`dashboard/scenario-03-fast-flux-detection.dashboard.json`](dashboard/scenario-03-fast-flux-detection.dashboard.json)

## 11. Official simulation — ⏳ Pending

Owner: Lubaba. Use [`attacker/SCENARIO-03-ADVERSARY-PLAYBOOK.md`](attacker/SCENARIO-03-ADVERSARY-PLAYBOOK.md). Keep ground truth private until defender decisions are locked.

## 12. SOC analysis — ⏳ Pending

Owner: Abdul-Rehman. Use [`soc/investigation-template.md`](soc/investigation-template.md).

## 13. IR / containment — ⏳ Pending

Owner: Sonia. Use [`ir/response-playbook.md`](ir/response-playbook.md). Response must be human-approved and narrow.

## 14. Verification — ⏳ Pending

Prove before/after DNS + network behavior and normal DNS continuity.

## 15. Cleanup / reset — ⏳ Pending

Stop rotation, reset temporary DNS/response policy as agreed, stop/terminate temporary flux resources when the exercise is closed, and verify safe state.

## 16. Final comparison — ⏳ Pending

Compare Lubaba ground truth with Detection v1.0, AI summary, Abdul-Rehman's SOC conclusion and Sonia's IR decision.

## 17. MITRE — ✅ Locked

`T1568.001 — Dynamic Resolution: Fast Flux DNS`

## 18. False positives — ✅ Engineering complete

Known dynamic AWS/Ubuntu/Splunk services were observed and tuned through a lookup. The analyst must still consider CDN/cloud/load-balancing context.

## 19. Lessons — 🟡 Engineering lessons complete

Detection Engineering lessons are documented. Official exercise lessons remain pending.

## 20. Screenshots / evidence — 🟡 Engineering curated

Infrastructure and Detection Engineering evidence is curated. Official attacker/SOC/IR evidence will be added only after execution.
