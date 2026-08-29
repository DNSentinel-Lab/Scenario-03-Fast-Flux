<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,6,1&height=190&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20IR%20Curated%20Evidence&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Sonia%20%C2%B7%20Independent%20Validation%20%E2%86%92%20Decision%20%E2%86%92%20Safe-State%20Proof&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🛡️ IR Curated Evidence" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=DNS%20History%20%E2%86%92%20Network%20Correlation%20%E2%86%92%20Current%20Risk%20%E2%86%92%20Host%20Context%20%E2%86%92%20Safe%20State" alt="🛡️ IR Curated Evidence workflow" />

![Evidence](https://img.shields.io/badge/IR_Evidence-Curated-14B8A6?style=flat-square) ![Decision](https://img.shields.io/badge/Containment-Not_Required-2EA44F?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🛡️ IR Workspace](../README.md) · [📖 IR Story](../INCIDENT-RESPONSE.md) · [🧾 Master Evidence](../../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 03 IR — Curated Evidence

This evidence chain explains **why IR refined the case from unresolved Fast Flux-like behavior to controlled/expected activity without forcing containment**.

## 🖼️ Decision & Safe-State Highlights

<table>
<tr>
<td width="33%"><img src="E03-independent-three-ip-dns-answer-history.png" alt="Three-IP DNS history"><br/><sub><b>E03:</b> all three historical answers.</sub></td>
<td width="33%"><img src="E04-exact-dns-answer-transition-timeline.png" alt="Answer timeline"><br/><sub><b>E04:</b> exact source-native answer transitions.</sub></td>
<td width="33%"><img src="E08-current-network-activity-check-zero.png" alt="Current network zero"><br/><sub><b>E08:</b> no current matching network activity.</sub></td>
</tr>
<tr>
<td width="33%"><img src="E12-defender-discovered-scenario-03-shell-history.png" alt="Shell history"><br/><sub><b>E12:</b> defender-discovered Scenario 03 host context.</sub></td>
<td width="33%"><img src="E18-active-rpz-contains-no-scenario-03-flux-rule.png" alt="RPZ safe state"><br/><sub><b>E18:</b> no Scenario 03 enforcement rule.</sub></td>
<td width="33%"><img src="E20-final-victim-dns-verification.png" alt="Victim DNS validation"><br/><sub><b>E20:</b> authorized-client DNS safe-state proof.</sub></td>
</tr>
</table>

## 📋 Full Evidence Set

| File | What it proves |
|---|---|
| [`E01-aws-sourcetype-inventory.png`](E01-aws-sourcetype-inventory.png) | AWS sourcetype inventory used before Resolver source discovery. |
| [`E03-independent-three-ip-dns-answer-history.png`](E03-independent-three-ip-dns-answer-history.png) | Resolver Query Logs independently show all three historical A answers. |
| [`E04-exact-dns-answer-transition-timeline.png`](E04-exact-dns-answer-transition-timeline.png) | Answer transitions reconstructed using AWS query_timestamp. |
| [`E05-historical-ttl-not-exposed.png`](E05-historical-ttl-not-exposed.png) | Historical Resolver data did not expose TTL. |
| [`E06-victim-to-three-ips-narrow-window.png`](E06-victim-to-three-ips-narrow-window.png) | IR VPC Flow correlation from victim to all three A-answer IPs. |
| [`E07-current-dns-activity-check-zero.png`](E07-current-dns-activity-check-zero.png) | No current matching DNS activity at IR decision time. |
| [`E08-current-network-activity-check-zero.png`](E08-current-network-activity-check-zero.png) | No current matching VPC Flow activity at IR decision time. |
| [`E09-single-client-scope.png`](E09-single-client-scope.png) | Expanded IR scope remains one resolver-visible client. |
| [`E10-splunk-endpoint-telemetry-gap-by-hostname.png`](E10-splunk-endpoint-telemetry-gap-by-hostname.png) | Splunk did not provide useful endpoint/process telemetry for victim. |
| [`E11-focused-ssm-to-root-session-evidence.png`](E11-focused-ssm-to-root-session-evidence.png) | Local journal shows SSM-to-root interactive context. |
| [`E12-defender-discovered-scenario-03-shell-history.png`](E12-defender-discovered-scenario-03-shell-history.png) | Root shell history shows Scenario 03 dig/curl follow-up logic. |
| [`E13-cloudtrail-ssm-actor.png`](E13-cloudtrail-ssm-actor.png) | CloudTrail StartSession context for the later interactive session. |
| [`E14-full-window-ssm-session-scope.png`](E14-full-window-ssm-session-scope.png) | Full-window SSM session scope. |
| [`E15-no-earlier-interactive-login.png`](E15-no-earlier-interactive-login.png) | Earlier local activity not explained by another interactive login. |
| [`E16-cron-ruled-out.png`](E16-cron-ruled-out.png) | Cron did not contain Scenario 03 dig/curl/resolver logic. |
| [`E17-no-active-dig-curl-process.png`](E17-no-active-dig-curl-process.png) | No active matching dig/curl process at IR check time. |
| [`E18-active-rpz-contains-no-scenario-03-flux-rule.png`](E18-active-rpz-contains-no-scenario-03-flux-rule.png) | Active RPZ contains no Scenario 03 flux rule. |
| [`E19-unbound-healthy.png`](E19-unbound-healthy.png) | Unbound configuration valid and service active. |
| [`E20-final-victim-dns-verification.png`](E20-final-victim-dns-verification.png) | Victim-side normal DNS + Scenario 03 public answer / live TTL verification. |
| [`T01-resolver-self-query-refused.png`](T01-resolver-self-query-refused.png) | Troubleshooting: resolver self-query refused; client-path validation used instead. |

## Integrity

See [`EVIDENCE-MANIFEST.csv`](EVIDENCE-MANIFEST.csv) and [`SHA256SUMS.txt`](SHA256SUMS.txt). Hashes were generated for the files as integrated into the final Scenario 03 repository.
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🛡️ IR Workspace](../README.md) · [📖 Incident Response](../INCIDENT-RESPONSE.md) · [📋 Final Report](../FINAL-IR-REPORT.md)

<br/>

**The response is complete when the evidence explains both the action and the decision not to act.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
