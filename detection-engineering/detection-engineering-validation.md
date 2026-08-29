<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=125&section=header&text=%F0%9F%A7%A0%20Detection%20Engineering%20Validation%20Record&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=F97316" width="100%" alt="Detection Engineering Validation Record" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧠 Detection Engineering Validation Record

| Test | Expected | Observed | Result |
|---|---|---|---|
| Unbound field validation | client/domain/query-reply visible | validated | ✅ PASS |
| VPC Flow field validation | source/destination/port/action fields | validated | ✅ PASS |
| Fresh Fast Flux network behavior | 2–3 public destinations in short windows | observed | ✅ PASS |
| Resolver answer extraction | returned A-record IPs available | `answers{}.Rdata` extracted | ✅ PASS |
| Generic churn false-positive test | legitimate dynamic domains also appear | multiple AWS/Ubuntu/Splunk services observed | ✅ PASS |
| DNS-answer ↔ network join | victim contacted DNS-returned addresses | validated for three controlled nodes | ✅ PASS |
| Benign lookup | known services excluded | lookup validated | ✅ PASS |
| Detection v1.0 | Fast Flux candidate remains after tuning | detection produced results | ✅ PASS |
| Scheduled alert | production search triggers | appeared in Triggered Alerts | ✅ PASS |
| AI webhook contract | bridge accepts structured evidence | HTTP 200 after schema correction | ✅ PASS |
| AI write-back | triage returns to Splunk | `index=dns_soc_ai` | ✅ PASS |
| Dashboard | all five panels load | Overview + Context validated | ✅ PASS |

## ⚖️ Boundary

These are **engineering validation** results. They are not the official information-separated Scenario 03 execution, SOC verdict, IR decision or containment verification.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
