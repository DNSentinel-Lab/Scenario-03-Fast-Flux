<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=190&section=header&text=%F0%9F%93%8A%20Fast%20Flux%20Investigation%20Dashboard&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Splunk%20Dashboard%20Studio%20%C2%B7%20Detection%20Overview%20%2B%20Context&descSize=15&descAlignY=61&descColor=38BDF8" width="100%" alt="📊 Fast Flux Investigation Dashboard" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=38BDF8&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Detection%20Activity%20%E2%86%92%20Active%20IPs%20%E2%86%92%2024h%20History%20%E2%86%92%20AI%20Triage;Analyst%20surface%2C%20not%20analyst%20verdict" alt="📊 Fast Flux Investigation Dashboard workflow" />

![Status](https://img.shields.io/badge/Dashboard-Implemented_%26_Validated-2EA44F?style=flat-square) ![Splunk](https://img.shields.io/badge/Splunk-Dashboard_Studio-000000?style=flat-square&logo=splunk&logoColor=white)

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [🔎 SPL](../spl/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📊 Scenario 03 — Dashboard Studio

**Dashboard Engineer:** [Musfira](https://github.com/MUSFIRA-ZAFAR)
**Title:** `Scenario 03 - Fast Flux DNS Detection`  
**Export:** [`scenario-03-fast-flux-detection.dashboard.json`](scenario-03-fast-flux-detection.dashboard.json)

The dashboard is the investigation surface for the frozen Fast Flux detection. It brings together activity, active destinations, historical IP context, AI assistance and detection metadata without turning the visualization itself into a verdict.

## 🖼️ Dashboard Evidence

<table>
<tr>
<td width="60%"><img src="../screenshots/detection-engineering/11-dashboard-detection-overview.png" alt="Detection Overview"><br/><sub><b>Detection Overview:</b> live activity, active Fast Flux IPs, 24-hour history and AI-assisted triage.</sub></td>
<td width="40%"><img src="../screenshots/detection-engineering/12-dashboard-detection-context.png" alt="Detection Context"><br/><sub><b>Detection Context:</b> the frozen detection metadata and analyst-facing interpretation boundary.</sub></td>
</tr>
</table>

## 🧭 Tabs & Panels

| Tab | Panel | Analyst question |
|---|---|---|
| **Detection Overview** | [`Fast Flux Detection Activity`](panels/panel-01-fast-flux-detection-activity.spl) | When did the production behavior surface? |
| **Detection Overview** | [`Active Fast Flux IPs (Last 30m)`](panels/panel-02-active-fast-flux-ips.spl) | Which public destinations are currently associated? |
| **Detection Overview** | [`Fast Flux IP History (24h)`](panels/panel-03-fast-flux-ip-history.spl) | How has destination infrastructure changed over time? |
| **Detection Overview** | [`AI-Assisted Triage Summary`](panels/panel-04-ai-assisted-triage-summary.spl) | What did the advisory AI summarize, and what still needs validation? |
| **Detection Context** | [`Detection Metadata`](panels/panel-05-detection-metadata.spl) | What rule/version/MITRE/severity boundary produced the lead? |

> **Dashboard rule:** visualize the evidence path; do not hide uncertainty behind a polished panel.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [🤖 AI](../ai/README.md)

<br/>

**A dashboard accelerates investigation. It does not replace it.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
