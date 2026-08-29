<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,6,1&height=125&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2003%20IR%20Timeline&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 03 IR Timeline" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

| UTC | Event | Evidence |
|---|---|---|
| `2026-08-28 12:20:10.186576` | Expanded Unbound scope first observed Scenario 03 domain from 10.50.30.20 | E09 |
| `2026-08-28 12:20:26` | Broader IR VPC Flow search first saw connection to 13.220.94.188 | E06 / broader-search notes |
| `2026-08-28 12:24:57` | Earliest answer transition visible in IR exact transition extraction: 13.220.94.188 | E04 |
| `2026-08-28 12:46:53` | Resolver answer transition to 52.73.218.100 | E04 |
| `2026-08-28 12:47:08` | VPC Flow first seen to 52.73.218.100 in IR narrow window | E06 |
| `2026-08-28 12:47:58` | Resolver answer transition to 54.81.98.44 | E04 |
| `2026-08-28 12:48:57` | VPC Flow first seen to 54.81.98.44 in IR narrow window | E06 |
| `2026-08-28 12:50:00` | Production Suspicious Fast Flux DNS Behavior alert event | SOC handoff |
| `2026-08-28 12:50:19` | Resolver answer transition back to 13.220.94.188 | E04 |
| `2026-08-28 12:51:53` | CloudTrail StartSession to victim by IAM user musfira | E13/E14 |
| `2026-08-28 12:52:05` | Victim journal: ssm-user -> sudo/su -> root session opened | E11 |
| `2026-08-28 12:52:38` | Resolver answer transition to 52.73.218.100 | E04 |
| `2026-08-28 13:04:55.345817` | Expanded Unbound scope last seen | E09 |
| `2026-08-29 ~06:49 UTC` | IR current DNS activity check: zero matching events | E07 |
| `2026-08-29 ~06:50 UTC` | IR current network activity check: zero matching connections | E08 |
| `2026-08-29 ~07:43 UTC` | Resolver identity and safe-state checks performed | E18/E19 |
| `2026-08-29 07:55 UTC` | Final victim DNS verification: unrelated DNS works; flux returns public answer with live TTL 60 | E20 |

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
