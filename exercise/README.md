<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,19,24,30&height=190&section=header&text=%F0%9F%8E%AD%20Exercise%20Control%20%26%20Ground%20Truth&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Information%20Separation%20%C2%B7%20Final%20Reveal&descSize=15&descAlignY=61&descColor=A78BFA" width="100%" alt="🎭 Exercise Control & Ground Truth" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=A78BFA&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Frozen%20Engineering%20%E2%86%92%20Hidden%20Operator%20Ground%20Truth%20%E2%86%92%20SOC%20%E2%86%92%20IR;Lock%20Decisions%20%E2%86%92%20Reveal%20%E2%86%92%20Compare%20%E2%86%92%20Close%20Out" alt="🎭 Exercise Control & Ground Truth workflow" />

![Exercise](https://img.shields.io/badge/Information_Separation-Preserved-A78BFA?style=flat-square) ![Reveal](https://img.shields.io/badge/Final_Reveal-Complete-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-03-EXECUTION.md) · [🧾 Evidence](../evidence/README.md) · [🎭 Final Comparison](final-comparison.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎭 Scenario 03 — Exercise Control

The scenario was designed so each role could only claim what its evidence supported at that stage. Operator ground truth stayed hidden until the SOC disposition and IR response decision were locked.

## 🔐 Information-Separation Model

```mermaid
flowchart TB
    A["🧠 Frozen Detection Engineering"] --> B["🎯 Operator Ground Truth"]
    B -. "🔒 hidden from defenders" .-> X[" "]
    A --> C["🔎 SOC Investigation"]
    C --> D["🛡️ IR Validation"]
    D --> E["⚖️ Response Decision"]
    E --> F["🎭 Ground-Truth Reveal"]
    B --> F
    F --> G["🧾 Final Comparison"]
    G --> H["♻️ Temporary Node Cleanup + Closeout"]
```

## ✅ Completed Gates

| Gate | Result |
|---|---|
| Engineering frozen before official execution | ✅ |
| Operator run completed without Splunk steering | ✅ |
| SOC disposition locked before reveal | ✅ |
| IR decision locked before reveal | ✅ |
| Resolver/RPZ safe state verified | ✅ |
| Ground truth compared only after decisions | ✅ |
| Temporary node cleanup recorded | ✅ |

## 🗂️ Files

- [`REALISTIC-EXERCISE-PROTOCOL.md`](REALISTIC-EXERCISE-PROTOCOL.md) — execution/reveal rules
- [`final-comparison.md`](final-comparison.md) — operator vs Detection vs AI vs SOC vs IR

> **Why this matters:** different conclusions can all be correct when roles possess different evidence at different times.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Final Comparison](final-comparison.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Evidence boundaries make the exercise realistic; the reveal makes the learning measurable.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
