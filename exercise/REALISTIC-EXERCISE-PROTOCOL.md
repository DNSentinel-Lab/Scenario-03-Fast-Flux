<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,19,24,30&height=125&section=header&text=%F0%9F%8E%AD%20Scenario%2003%20%E2%80%94%20Realistic%20Information-Separated%20Exercise%20Protocol&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Exercise%20Control&descSize=13&descAlignY=68&descColor=A78BFA" width="100%" alt="Scenario 03 — Realistic Information-Separated Exercise Protocol" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Exercise_Control-A78BFA?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 📌 Scenario 03 — Realistic Information-Separated Exercise Protocol

This protocol records how the completed Scenario 03 run protected role separation.

## 📌 Frozen before the official start

- Fast Flux infrastructure design;
- `flux-rotate.sh` logic and timing;
- Detection v1.0;
- benign dynamic-domain lookup;
- scheduled alert;
- AI result contract;
- Dashboard Studio searches.

## ⚖️ Operator boundary

Lubaba could see:

- controller host and script;
- authoritative DNS state;
- temporary flux node state;
- controller output;
- victim follow-up output;
- private execution timestamps.

Lubaba did **not** inspect Splunk, Detection v1.0 results, AI triage or the SOC investigation to steer the run.

## 🔎 SOC boundary

Abdul-Rehman could see only defender evidence: alerting, Unbound, VPC Flow, lookup/baseline context, Dashboard Studio and AI after forming a human hypothesis.

He did not receive:

- controller start/end;
- operator screenshots;
- Route 53 transition sequence;
- private ground truth.

## ⚖️ IR boundary

Sonia received the SOC handoff and defender-side evidence. She independently located stronger Resolver Query Log data and defender-accessible host/context evidence. Hidden operator ground truth remained out of the IR decision process.

## 📌 Reveal gate

Operator ground truth became eligible for comparison only after:

```text
SOC disposition locked
→ IR classification locked
→ response decision locked
→ safe-state verification complete
→ final IR conclusion recorded
```

## 📌 Why this matters

The goal was not secrecy for its own sake. The goal was to make each role answer the question its evidence allowed.

- The operator proves what was generated.
- Detection proves what the rule surfaced.
- SOC proves what defender telemetry supported at first-line investigation depth.
- IR proves what stronger defender evidence and context justified.

That is why Abdul's `INCONCLUSIVE — ESCALATION WARRANTED` and Sonia's later `CONTROLLED / EXPECTED — NO CONTAINMENT REQUIRED` are both correct within their evidence boundaries.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
