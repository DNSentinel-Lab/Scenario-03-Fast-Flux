<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,20,24,26&height=125&section=header&text=%F0%9F%94%8E%20AI%20Validation%20%E2%80%94%20Scenario%2003&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="AI Validation — Scenario 03" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🤖 AI Validation — Scenario 03

## ✅ Result

**PARTIALLY CORRECT**

## 📌 Correct
- Correct client, domain, three IPs and alert connection count.
- Appropriate `T1568.001` and Command & Control context.
- Explicitly required human validation.
- Correctly avoided declaring confirmed malware, malicious C2 or malicious infrastructure.
- Correctly identified missing TTL/history, endpoint/process, reputation/ownership and flow context.

## 📌 Partial / limitations
- Some statements treated the alert-supplied DNS-to-IP correlation as established, while the raw Unbound events displayed during the investigation did not independently expose answer IP values.
- AI output preceded the analyst's full baseline, scope, benign-lookup and detailed manual VPC Flow findings, so those were absent from the advisory summary.

## 📌 Human decision
AI was retained as advisory evidence only. Final disposition remained a human SOC decision.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
