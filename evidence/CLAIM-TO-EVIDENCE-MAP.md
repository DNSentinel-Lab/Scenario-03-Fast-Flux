<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=150&section=header&text=%F0%9F%A7%BE%20Scenario%2003%20%E2%80%94%20Claim%20%E2%86%92%20Evidence%20Map&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Evidence%20%2F%20Closeout&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Scenario 03 — Claim → Evidence Map" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Evidence_%2F_Closeout-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧾 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧾 Scenario 03 — Claim → Evidence Map

This map keeps the closeout defensible. It shows which preserved artifact supports each major public claim.

| Claim | Primary evidence | Boundary |
|---|---|---|
| The controller started the official Fast Flux run at `12:43:43Z` | [`attacker/evidence/06-official-fast-flux-start.png`](../attacker/evidence/06-official-fast-flux-start.png) | operator ground truth / reveal-ready after defender closure |
| The controller rotated through all three controlled nodes | [`attacker/evidence/07-first-complete-rotation-cycle.png`](../attacker/evidence/07-first-complete-rotation-cycle.png) | operator ground truth |
| The victim followed DNS-returned IPs and received HTTP `200` | [`attacker/evidence/08-victim-follow-up-start-and-transition.png`](../attacker/evidence/08-victim-follow-up-start-and-transition.png), [`09-victim-follows-third-node.png`](../attacker/evidence/09-victim-follows-third-node.png) | operator proof; defenders validated independently with VPC Flow |
| Detection v1.0 produced a live Scenario 03 lead | [`soc/evidence/E03-live-fast-flux-alert-36.png`](../soc/evidence/E03-live-fast-flux-alert-36.png) | SOC alert evidence |
| SOC independently confirmed victim flows to all three alert IPs | [`soc/evidence/E07-vpc-flow-raw-three-ips.png`](../soc/evidence/E07-vpc-flow-raw-three-ips.png), [`E08-vpc-flow-summary-three-ips.png`](../soc/evidence/E08-vpc-flow-summary-three-ips.png) | defender network evidence |
| SOC scope was one internal client | [`soc/evidence/E11-scope-single-client.png`](../soc/evidence/E11-scope-single-client.png) | resolver-visible scope only |
| Scenario domain strongly exceeded the client's A-query baseline | [`soc/evidence/E13-baseline-top-domains.png`](../soc/evidence/E13-baseline-top-domains.png) | behavior context, not maliciousness proof |
| Scenario domain was not in the configured benign lookup | [`soc/evidence/E10-benign-lookup-no-match.png`](../soc/evidence/E10-benign-lookup-no-match.png) | “not known benign,” not “malicious” |
| AI was advisory and only Partially Correct | [`soc/evidence/E16-ai-expanded-fields-1.png`](../soc/evidence/E16-ai-expanded-fields-1.png), [`E17-ai-expanded-fields-2.png`](../soc/evidence/E17-ai-expanded-fields-2.png) | human validation owns disposition |
| IR independently recovered all three historical A answers | [`ir/evidence/E03-independent-three-ip-dns-answer-history.png`](../ir/evidence/E03-independent-three-ip-dns-answer-history.png) | closes SOC answer-IP evidence gap |
| IR rebuilt answer chronology from AWS source-native timestamps | [`ir/evidence/E04-exact-dns-answer-transition-timeline.png`](../ir/evidence/E04-exact-dns-answer-transition-timeline.png) | query_timestamp used for chronology |
| Historical TTL was not exposed in preserved Resolver logs | [`ir/evidence/E05-historical-ttl-not-exposed.png`](../ir/evidence/E05-historical-ttl-not-exposed.png) | prevents retroactive TTL claim |
| Activity was inactive at IR decision time | [`ir/evidence/E07-current-dns-activity-check-zero.png`](../ir/evidence/E07-current-dns-activity-check-zero.png), [`E08-current-network-activity-check-zero.png`](../ir/evidence/E08-current-network-activity-check-zero.png), [`E17-no-active-dig-curl-process.png`](../ir/evidence/E17-no-active-dig-curl-process.png) | current-state evidence |
| Defender host evidence strongly supports controlled Scenario 03 follow-up | [`ir/evidence/E12-defender-discovered-scenario-03-shell-history.png`](../ir/evidence/E12-defender-discovered-scenario-03-shell-history.png) | does not erase earliest-attribution gap |
| No Scenario 03 RPZ enforcement was active | [`ir/evidence/E18-active-rpz-contains-no-scenario-03-flux-rule.png`](../ir/evidence/E18-active-rpz-contains-no-scenario-03-flux-rule.png) | response safe-state evidence |
| Resolver remained healthy and normal DNS worked | [`ir/evidence/E19-unbound-healthy.png`](../ir/evidence/E19-unbound-healthy.png), [`E20-final-victim-dns-verification.png`](../ir/evidence/E20-final-victim-dns-verification.png) | closeout verification |
| Temporary Fast Flux EC2 pool was retired after the exercise | final team closeout record | exact teardown timestamp/screenshot not present in attached role evidence; repository does not invent one |

## 🧠 Rule

A public statement should be no stronger than the evidence in this table. When a field or timestamp was unavailable, the limitation remains part of the final record.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧾 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
