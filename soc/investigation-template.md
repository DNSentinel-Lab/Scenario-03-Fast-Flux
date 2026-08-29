<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,20,24,26&height=125&section=header&text=%F0%9F%94%8E%20Scenario%2003%20SOC%20Investigation%20Template%20%E2%80%94%20Abdul-Rehman&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 03 SOC Investigation Template — Abdul-Rehman" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🔎 Scenario 03 SOC Investigation Template — Abdul-Rehman

## 🚨 Alert

- Alert time:
- Detection name:
- Source/client:
- Domain:
- Matched connections:
- Unique matched IPs:
- Matched IPs:

## 🧾 Validate raw evidence

1. Which hostname triggered?
2. Which client was involved?
3. What A-record answers were returned and when?
4. How many unique answer IPs appeared?
5. Did the client connect to those same IPs?
6. Which ports/actions were observed?
7. Does the activity occur in short repeated windows?
8. Is the domain in the benign lookup or supported by known business context?
9. Do other internal clients show the same pattern?
10. What does AI claim, and which claims are actually supported by raw Splunk events?

## 📌 Disposition

- Benign / expected
- Suspicious — escalation warranted
- Confirmed within controlled scenario context

Reasoning:

## 📨 IR handoff

Only write the handoff after the disposition is locked. Include evidence and uncertainty; do not prescribe an automatic response from AI output alone.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
