<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=190&section=header&text=Incident%20Response%20and%20Defender&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20-%20Sonia%20-%20Independent%20Validation%20to%20Proportionate%20Decision%20to%20Safe%20State&descSize=15&descAlignY=61" width="100%" alt="🛡️ Incident Response & Defender" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=SOC%20Handoff%20%E2%86%92%20Independent%20DNS%20History%20%E2%86%92%20Current-Risk%20Check%20%E2%86%92%20Host%20Context;Containment%20Gate%20%E2%86%92%20No%20Change%20Required%20%E2%86%92%20RPZ%20%2B%20Resolver%20Safe-State%20Verification" alt="🛡️ Incident Response & Defender workflow" />

![Role](https://img.shields.io/badge/Role-IR%2FDefender-14B8A6?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Sonia-A855F7?style=flat-square) ![Decision](https://img.shields.io/badge/Decision-No_Containment_Required-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 SOC Handoff](../soc/SOC-TO-IR-HANDOFF.md) · [🧾 Evidence](evidence/README.md) · [🎭 Final Comparison](../exercise/final-comparison.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🛡️ Scenario 03 Incident Response Workspace

[Sonia's](https://github.com/sonia11mansha415) job was not to repeat the SOC investigation or activate RPZ because the mechanism existed. IR independently rebuilt the answer history, strengthened network/host context, measured current risk and changed the environment **only if the evidence justified it**.

## 🚦 Response Snapshot

| Field | IR result |
|---|---|
| Responder | [Sonia](https://github.com/sonia11mansha415) |
| Input | evidence-limited SOC handoff |
| Fast Flux-like behavior | independently confirmed |
| Current matching DNS/network activity | inactive at decision time |
| Endpoint/process telemetry in Splunk | insufficient |
| Defender-side host context | strongly consistent with controlled Scenario 03 follow-up |
| Malicious attribution | not established |
| RPZ/sinkhole | available, not activated |
| Resolver | healthy |
| Final classification | **CONTROLLED / EXPECTED SCENARIO ACTIVITY** |
| Final response | **NO CONTAINMENT REQUIRED** |

## ⚖️ Response Decision Path

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "30px"
  },
  "flowchart": {
    "nodeSpacing": 48,
    "rankSpacing": 58,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart LR

    %% =====================================================
    %% 1 · EVIDENCE REVIEW
    %% =====================================================
    subgraph REVIEW[" "]
        direction TB

        H1["🔎 1 · EVIDENCE REVIEW"]

        A["📨 SOC<br/>HANDOFF"]

        B["🔍 INDEPENDENT<br/>DNS HISTORY"]

        C["🌐 NETWORK<br/>CORRELATION"]

        H1 ==> A ==> B ==> C
    end


    %% =====================================================
    %% 2 · RISK DECISION
    %% =====================================================
    subgraph DECISION[" "]
        direction TB

        H2["⚖️ 2 · RISK DECISION"]

        D["⏱️ CURRENT<br/>ACTIVITY CHECK"]

        E["🖥️ ENDPOINT / SESSION<br/>CONTEXT"]

        F["🧭 RISK + ATTRIBUTION<br/>DECISION"]

        G{"⚖️ IS CONTAINMENT<br/>PROPORTIONATE?"}

        H2 ==> D ==> E ==> F ==> G
    end


    %% =====================================================
    %% 3 · SAFE-STATE VERIFICATION
    %% =====================================================
    subgraph VERIFY[" "]
        direction TB

        H3["✅ 3 · SAFE-STATE VERIFICATION"]

        N["🟢 NO CONTAINMENT<br/>REQUIRED"]

        H["🛡️ VERIFY RPZ<br/>SAFE STATE"]

        I["✅ VERIFY RESOLVER<br/>+ VICTIM DNS"]

        H3 ==> N ==> H ==> I
    end


    %% =====================================================
    %% CLEAN LEFT → RIGHT HANDOFFS
    %% =====================================================
    REVIEW ==> DECISION

    G ==> N


    %% =====================================================
    %% PREMIUM GLOSSY HEADERS
    %% =====================================================
    classDef reviewHeader fill:#075985,stroke:#67e8f9,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    classDef decisionHeader fill:#78350f,stroke:#fbbf24,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    classDef verifyHeader fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    class H1 reviewHeader;
    class H2 decisionHeader;
    class H3 verifyHeader;


    %% =====================================================
    %% EVIDENCE REVIEW COLORS
    %% =====================================================
    classDef handoff fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef dns fill:#075985,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef network fill:#164e63,stroke:#38bdf8,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    class A handoff;
    class B dns;
    class C network;


    %% =====================================================
    %% DECISION COLORS
    %% =====================================================
    classDef activity fill:#4c1d95,stroke:#c084fc,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef endpoint fill:#312e81,stroke:#a78bfa,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef risk fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef gate fill:#713f12,stroke:#fde047,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    class D activity;
    class E endpoint;
    class F risk;
    class G gate;


    %% =====================================================
    %% VERIFICATION COLORS
    %% =====================================================
    classDef noContain fill:#0f766e,stroke:#5eead4,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef rpz fill:#166534,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:30px,font-weight:bold;

    classDef complete fill:#065f46,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    class N noContain;
    class H rpz;
    class I complete;


    %% =====================================================
    %% GLOSSY PANELS
    %% =====================================================
    style REVIEW fill:#051521,stroke:#22d3ee,stroke-width:4px

    style DECISION fill:#180d05,stroke:#fbbf24,stroke-width:4px

    style VERIFY fill:#06150d,stroke:#4ade80,stroke-width:4px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ IR Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/E03-independent-three-ip-dns-answer-history.png" alt="Three-IP DNS history"><br/><sub><b>E03:</b> all three A answers independently recovered.</sub></td>
<td width="33%"><img src="evidence/E04-exact-dns-answer-transition-timeline.png" alt="Answer transition timeline"><br/><sub><b>E04:</b> source-native answer chronology.</sub></td>
<td width="33%"><img src="evidence/E08-current-network-activity-check-zero.png" alt="Current network activity zero"><br/><sub><b>E08:</b> no current matching connections at decision time.</sub></td>
</tr>
<tr>
<td width="33%"><img src="evidence/E12-defender-discovered-scenario-03-shell-history.png" alt="Shell history"><br/><sub><b>E12:</b> defender-discovered host context.</sub></td>
<td width="33%"><img src="evidence/E18-active-rpz-contains-no-scenario-03-flux-rule.png" alt="RPZ safe state"><br/><sub><b>E18:</b> no Scenario 03 enforcing RPZ rule.</sub></td>
<td width="33%"><img src="evidence/E20-final-victim-dns-verification.png" alt="Final victim DNS validation"><br/><sub><b>E20:</b> normal resolver operation verified from the authorized client path.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`INCIDENT-RESPONSE.md`](INCIDENT-RESPONSE.md) — flagship IR story
- [`FINAL-IR-REPORT.md`](FINAL-IR-REPORT.md) — formal closeout
- [`5W1H.md`](5W1H.md) — structured IR record
- [`TIMELINE.md`](TIMELINE.md) — defender timeline
- [`COMMANDS.md`](COMMANDS.md) — evidence-collection ledger
- [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) — curated lessons
- [`spl/README.md`](spl/README.md) — IR search lifecycle
- [`shell/README.md`](shell/README.md) — read-only host-validation path
- [`evidence/README.md`](evidence/README.md) — curated IR evidence

> **Response mechanism ≠ response requirement.** The correct outcome was to leave the resolver unchanged and prove the safe state.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 IR Story](INCIDENT-RESPONSE.md) · [📋 Final Report](FINAL-IR-REPORT.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Strengthen the evidence. Measure current risk. Change only what the evidence justifies.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
