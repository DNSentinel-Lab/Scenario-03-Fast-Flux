<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=190&section=header&text=Exercise%20Control%20and%20Ground%20Truth&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20-%20Information%20Separation%20-%20Final%20Reveal&descSize=15&descAlignY=61" width="100%" alt="🎭 Exercise Control & Ground Truth" />

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
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#050814",
    "primaryTextColor": "#ffffff",
    "lineColor": "#e5eefc",
    "fontSize": "28px"
  },
  "flowchart": {
    "nodeSpacing": 52,
    "rankSpacing": 62,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart TB

    %% =====================================================
    %% TOP FOUNDATION
    %% =====================================================
    A["🧠 FROZEN DETECTION<br/>ENGINEERING"]

    %% =====================================================
    %% LEFT — OPERATOR SIDE
    %% =====================================================
    subgraph LEFT[" "]
        direction TB
        B["🎯 OPERATOR<br/>GROUND TRUTH"]
        X["🔒 HIDDEN FROM DEFENDERS<br/>UNTIL REVEAL"]
        B --> X
    end

    %% =====================================================
    %% RIGHT — DEFENDER SIDE
    %% =====================================================
    subgraph RIGHT[" "]
        direction TB
        C["🔎 SOC<br/>INVESTIGATION"]
        D["🛡️ IR<br/>VALIDATION"]
        E["⚖️ RESPONSE<br/>DECISION"]

        C --> D --> E
    end

    %% =====================================================
    %% SHARED OUTCOME
    %% =====================================================
    F["🎭 GROUND-TRUTH<br/>REVEAL"]
    G["🧾 FINAL<br/>COMPARISON"]
    H["♻️ TEMPORARY NODE<br/>CLEANUP + CLOSEOUT"]

    %% =====================================================
    %% FLOW
    %% =====================================================
    A ==> B
    A ==> C

    X -. "withheld until analyst work is complete" .-> F
    E ==> F

    F ==> G ==> H

    %% =====================================================
    %% PREMIUM STYLES
    %% =====================================================
    classDef foundation fill:#172554,stroke:#60a5fa,stroke-width:5px,color:#ffffff,font-size:29px,font-weight:bold;
    classDef truth fill:#7c2d12,stroke:#fb923c,stroke-width:5px,color:#ffffff,font-size:29px,font-weight:bold;
    classDef hidden fill:#3f1d1d,stroke:#f87171,stroke-width:5px,color:#ffffff,font-size:27px,font-weight:bold;
    classDef soc fill:#083344,stroke:#22d3ee,stroke-width:5px,color:#ffffff,font-size:29px,font-weight:bold;
    classDef ir fill:#312e81,stroke:#a78bfa,stroke-width:5px,color:#ffffff,font-size:29px,font-weight:bold;
    classDef decision fill:#422006,stroke:#fbbf24,stroke-width:5px,color:#ffffff,font-size:29px,font-weight:bold;
    classDef reveal fill:#581c87,stroke:#e879f9,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef final fill:#14532d,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;
    classDef cleanup fill:#0f766e,stroke:#2dd4bf,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    class A foundation;
    class B truth;
    class X hidden;
    class C soc;
    class D ir;
    class E decision;
    class F reveal;
    class G final;
    class H cleanup;

    %% =====================================================
    %% CONTAINER STYLES
    %% =====================================================
    style LEFT fill:#120a07,stroke:#fb923c,stroke-width:2px
    style RIGHT fill:#08131f,stroke:#38bdf8,stroke-width:2px

    %% =====================================================
    %% CONNECTOR STYLES
    %% =====================================================
    linkStyle 0 stroke:#fb923c,stroke-width:5px
    linkStyle 1 stroke:#38bdf8,stroke-width:5px
    linkStyle 2 stroke:#f87171,stroke-width:4px,stroke-dasharray:8 6
    linkStyle 3 stroke:#e879f9,stroke-width:5px
    linkStyle 4 stroke:#86efac,stroke-width:5px
    linkStyle 5 stroke:#2dd4bf,stroke-width:5px
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
