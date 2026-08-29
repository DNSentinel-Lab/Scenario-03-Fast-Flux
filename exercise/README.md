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
    "lineColor": "#f8fafc",
    "fontSize": "29px"
  },
  "flowchart": {
    "nodeSpacing": 52,
    "rankSpacing": 64,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart LR

    %% =====================================================
    %% FOUNDATION
    %% =====================================================
    A["🧠 FROZEN DETECTION<br/>ENGINEERING"]


    %% =====================================================
    %% INFORMATION-SEPARATED PATHS
    %% =====================================================
    subgraph PATHS[" "]
        direction TB

        %% -------------------------------------------------
        %% OPERATOR / GROUND-TRUTH PATH
        %% -------------------------------------------------
        subgraph OPERATOR[" "]
            direction LR

            OH["🎯 OPERATOR PATH"]

            B["🎯 OPERATOR<br/>GROUND TRUTH"]

            X["🔒 HIDDEN FROM DEFENDERS<br/>UNTIL REVEAL"]

            OH ==> B ==> X
        end


        %% -------------------------------------------------
        %% DEFENDER PATH
        %% -------------------------------------------------
        subgraph DEFENDER[" "]
            direction LR

            DH["🛡️ DEFENDER PATH"]

            C["🔎 SOC<br/>INVESTIGATION"]

            D["🛡️ IR<br/>VALIDATION"]

            E["⚖️ RESPONSE<br/>DECISION"]

            DH ==> C ==> D ==> E
        end
    end


    %% =====================================================
    %% REVEAL + CLOSEOUT
    %% =====================================================
    F["🎭 GROUND-TRUTH<br/>REVEAL"]

    G["🧾 FINAL<br/>COMPARISON"]

    H["♻️ TEMPORARY NODE<br/>CLEANUP + CLOSEOUT"]


    %% =====================================================
    %% MAIN FLOW
    %% =====================================================
    A ==> B
    A ==> C

    X -.-> F
    E ==> F

    F ==> G ==> H


    %% =====================================================
    %% FOUNDATION
    %% =====================================================
    classDef foundation fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;


    %% =====================================================
    %% OPERATOR PATH — ORANGE / RED
    %% =====================================================
    classDef operatorHeader fill:#78350f,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef truth fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef hidden fill:#450a0a,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:28px,font-weight:bold;


    %% =====================================================
    %% DEFENDER PATH — CYAN / BLUE
    %% =====================================================
    classDef defenderHeader fill:#075985,stroke:#67e8f9,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef soc fill:#083344,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef ir fill:#312e81,stroke:#a78bfa,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef decision fill:#713f12,stroke:#fde047,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;


    %% =====================================================
    %% REVEAL / COMPARISON / CLOSEOUT
    %% =====================================================
    classDef reveal fill:#581c87,stroke:#f0abfc,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef final fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef cleanup fill:#0f766e,stroke:#5eead4,stroke-width:7px,color:#ffffff,font-size:29px,font-weight:bold;


    %% =====================================================
    %% APPLY CLASSES
    %% =====================================================
    class A foundation;

    class OH operatorHeader;
    class B truth;
    class X hidden;

    class DH defenderHeader;
    class C soc;
    class D ir;
    class E decision;

    class F reveal;
    class G final;
    class H cleanup;


    %% =====================================================
    %% PREMIUM PANELS
    %% =====================================================
    style PATHS fill:#050814,stroke:#334155,stroke-width:2px

    style OPERATOR fill:#160a05,stroke:#fb923c,stroke-width:4px

    style DEFENDER fill:#051521,stroke:#22d3ee,stroke-width:4px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:5px;
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
