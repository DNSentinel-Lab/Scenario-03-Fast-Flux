<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,20,24,26&height=125&section=header&text=%F0%9F%94%8E%20SOC%20%E2%86%92%20IR%20Handoff%20%E2%80%94%20Sonia&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="SOC → IR Handoff — Sonia" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

## 📌 Disposition
**INCONCLUSIVE — ESCALATION WARRANTED**

## 🚨 Alert
- `Suspicious Fast Flux DNS Behavior`
- Medium
- Event time: `2026-08-28T12:50:00Z`
- Client: `10.50.30.20` / `dns-soc-victim01`
- Resolver: `10.50.30.10` / `dns-soc-resolver01`
- Domain: `flux.soclab.abdul4rehman215.tech`
- MITRE: `T1568.001 — Dynamic Resolution: Fast Flux DNS`
- Cyber Kill Chain: Command & Control

## 🧾 DNS evidence
- Repeated successful A queries and NOERROR responses.
- 274 A-query events in 12:40–13:00 UTC.
- Raw Unbound view did not independently expose returned A-record IP values.

## 🌐 Network evidence
| Destination | Manual flow events | First seen UTC | Last seen UTC | Port | Action | Bytes |
|---|---:|---|---|---:|---|---:|
| `13.220.94.188` | 14 | 12:45:26 | 12:52:57 | 80 | allowed | 5810 |
| `52.73.218.100` | 15 | 12:47:08 | 12:54:27 | 80 | allowed | 6225 |
| `54.81.98.44` | 8 | 12:48:57 | 12:54:56 | 80 | allowed | 3320 |

A later trigger for the same 12:50 alert bucket showed 42 matched connections. Preserve the manual/detection count difference as an aggregation-window difference to investigate, not an error to hide.

## 📊 Baseline / tuning
- Scenario domain: 274 A-query events.
- Next-highest observed A-query domain: 20.
- Scenario domain absent from `fastflux_benign_domains.csv`.

## 🎯 Scope
One internal client observed in the reviewed scope. Responsible process and user remain unknown.

## 🤖 AI validation
Partially Correct; conservative, attribution-aware, and human-validation gated, but depended on alert-supplied DNS/IP correlation for some claims.

## 📌 Attribution limits
No proof of malware, compromise, malicious ownership, confirmed C2 ownership, process/user identity, or unauthorized intent.

## 📌 Recommended IR questions
1. Which process generated the DNS queries and TCP/80 flows?
2. Which user/service context owned that process?
3. Is the process and destination use approved?
4. Can endpoint telemetry reproduce the DNS → connection sequence?
5. Can historical/authoritative DNS evidence prove answer rotation and TTL behavior?
6. Is containment justified and, if applied, does telemetry prove behavior changed?

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
