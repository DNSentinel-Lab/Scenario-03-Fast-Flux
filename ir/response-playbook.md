<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,6,1&height=125&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2003%20IR%20Response%20Playbook%20%E2%80%94%20Sonia&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 03 IR Response Playbook — Sonia" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🛡️ Scenario 03 IR Response Playbook — Sonia

## ✅ Gate 1 — independent validation

- review the SOC handoff;
- inspect Resolver Query Logs and VPC Flow evidence directly;
- confirm the affected namespace and client scope;
- record whether containment is justified.

## 🤖 Gate 2 — approved containment

If justified, apply the narrow existing DNS response path to the Scenario 03 namespace only. Do not globally block the victim and do not treat AI output as authorization.

## 📌 Gate 3 — verification

Capture before/after evidence showing that the victim no longer follows the original rotating public destinations and instead receives the approved blocked/sinkhole outcome.

Also verify normal unrelated DNS still resolves.

## ✅ Gate 4 — safe reset

Return RPZ/response policy to its normal safe state and verify the temporary Scenario 03 change is removed.

Official commands and screenshots are intentionally left blank until the response is actually performed.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
