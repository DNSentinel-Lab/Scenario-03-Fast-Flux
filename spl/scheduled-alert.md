<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=125&section=header&text=%F0%9F%94%8E%20Saved%20Alert%20Configuration&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SPL%20Engineering&descSize=13&descAlignY=68&descColor=F97316" width="100%" alt="Saved Alert Configuration" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SPL_Engineering-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🚨 Saved Alert Configuration

- **Title:** Suspicious Fast Flux DNS Behavior
- **Type:** Scheduled
- **Cron:** `*/5 * * * *`
- **Trigger condition:** Number of Results > 0
- **Trigger mode:** Once
- **Throttle:** Off during validation
- **Severity in result:** Medium
- **Action 1:** Add to Triggered Alerts
- **Action 2:** Webhook
- **Webhook URL:** `http://dns-soc-ai-bridge:5000/splunk-webhook`
- **MITRE:** T1568.001

The alert was validated with live controlled rotation and appeared in Splunk Triggered Alerts before the AI integration was finalized.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
