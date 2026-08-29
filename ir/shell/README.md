<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,6,1&height=190&section=header&text=%F0%9F%92%BB%20IR%20Read-Only%20Host%20Validation&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Resolver%20%2B%20Victim%20Safe-State%20Checks&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="💻 IR Read-Only Host Validation" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Resolver%20Validation%20%E2%86%92%20Victim%20Validation%20%E2%86%92%20Safe-State%20Proof" alt="💻 IR Read-Only Host Validation workflow" />

![Shell](https://img.shields.io/badge/IR_Shell-Read_Only_Validation-14B8A6?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🛡️ IR Workspace](../README.md) · [📖 IR Story](../INCIDENT-RESPONSE.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 💻 Scenario 03 IR — Read-Only Host Validation

These scripts support **defender-side validation**, not scenario generation.

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "32px"
  },
  "flowchart": {
    "nodeSpacing": 52,
    "rankSpacing": 65,
    "curve": "basis",
    "padding": 22
  }
}}%%

flowchart LR

    A["🛡️ 01 · RESOLVER<br/>CHECKS"]

    B["✅ 02 · UNBOUND / RPZ<br/>SAFE STATE"]

    C["🖥️ 03 · VICTIM<br/>CHECKS"]

    D["🌐 04 · AUTHORIZED CLIENT<br/>DNS VALIDATION"]

    E["🏁 05 · FINAL<br/>SAFE-STATE PROOF"]

    A ==> B ==> C ==> D ==> E


    %% =====================================================
    %% RESOLVER
    %% =====================================================
    classDef resolver fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% RPZ SAFE STATE
    %% =====================================================
    classDef rpz fill:#0f766e,stroke:#5eead4,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% VICTIM CHECK
    %% =====================================================
    classDef victim fill:#4c1d95,stroke:#c084fc,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% DNS VALIDATION
    %% =====================================================
    classDef dns fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:32px,font-weight:bold;


    %% =====================================================
    %% FINAL PROOF
    %% =====================================================
    classDef proof fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;


    %% =====================================================
    %% APPLY COLORS
    %% =====================================================
    class A resolver;
    class B rpz;
    class C victim;
    class D dns;
    class E proof;


    %% =====================================================
    %% BRIGHT NEON CONNECTORS
    %% =====================================================
    linkStyle 0 stroke:#60a5fa,stroke-width:6px;
    linkStyle 1 stroke:#c084fc,stroke-width:6px;
    linkStyle 2 stroke:#22d3ee,stroke-width:6px;
    linkStyle 3 stroke:#4ade80,stroke-width:6px;
```

| Script | Purpose |
|---|---|
| [`resolver-readonly-validation.sh`](resolver-readonly-validation.sh) | inspect resolver configuration/service/RPZ state without applying Scenario 03 containment |
| [`victim-readonly-checks.sh`](victim-readonly-checks.sh) | validate victim-side state and normal DNS behavior |

> **Important:** historical commands discovered in shell history are evidence. They are not represented here as commands IR re-ran to generate scenario behavior.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🛡️ IR Workspace](../README.md) · [💻 Command Ledger](../COMMANDS.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Read-only validation protects the evidence boundary while proving the safe state.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
