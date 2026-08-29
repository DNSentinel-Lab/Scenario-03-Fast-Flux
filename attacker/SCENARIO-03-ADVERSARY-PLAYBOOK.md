<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=26,20,14,6,1&height=125&section=header&text=%F0%9F%8E%AF%20Scenario%2003%20Official%20Simulation%20Playbook%20%E2%80%94%20Lubaba&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Scenario 03 Official Simulation Playbook — Lubaba" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 📌 Scenario 03 Official Simulation Playbook — Lubaba

## 📌 Before start

- confirm the three controlled nodes are healthy;
- confirm current node public IPs;
- confirm `flux.soclab.abdul4rehman215.tech` uses the intended 60-second TTL;
- confirm the rotation mechanism is ready but not yet producing the official timeline;
- record UTC start in the private ground-truth file;
- do not reveal the sequence to the SOC Analyst.

## 📌 Official activity

1. start the approved Route 53 rotation cycle;
2. run the victim resolver/follow-up behavior through the normal defender DNS path;
3. do not adjust the activity based on Splunk alerts;
4. preserve UTC transitions and current node addresses as private ground truth;
5. stop at the agreed scenario duration.

## 📌 Do not

- edit Detection v1.0;
- edit the benign lookup;
- inspect SOC conclusions to steer traffic;
- activate IR containment;
- use third-party infrastructure.

## 📨 Handoff

Keep ground truth private until Abdul-Rehman records the SOC disposition and Sonia records the IR decision.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
