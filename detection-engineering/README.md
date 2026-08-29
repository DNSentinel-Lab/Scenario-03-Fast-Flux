<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=190&section=header&text=%F0%9F%A7%A0%20Scenario%2003%20Detection%20Engineering&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Fast%20Flux%20DNS%20%C2%B7%20Musfira%20%C2%B7%20Detection%20v1.0&descSize=15&descAlignY=61&descColor=F97316" width="100%" alt="🧠 Scenario 03 Detection Engineering" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=F97316&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Validate%20Fields%20%E2%86%92%20Establish%20Baseline%20%E2%86%92%20Challenge%20Churn%20%E2%86%92%20Correlate%20Answers;Tune%20%E2%86%92%20Freeze%20v1.0%20%E2%86%92%20Alert%20%E2%86%92%20AI%20Assist%20%E2%86%92%20Deliver%20to%20SOC;Detect%20behavior%20the%20analyst%20can%20independently%20verify" alt="🧠 Scenario 03 Detection Engineering workflow" />

![Scenario](https://img.shields.io/badge/Scenario_03-Detection_Engineering_Complete-2EA44F?style=flat-square) ![Detection](https://img.shields.io/badge/Detection-v1.0-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square) ![Validation](https://img.shields.io/badge/Official_Run-Validated-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [📊 Dashboard](../dashboard/README.md) · [🔎 SPL](../spl/README.md) · [🤖 AI](../ai/README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧠 Fast Flux Detection Engineering Workspace

**Detection Engineer:** [Musfira](https://github.com/MUSFIRA-ZAFAR)  
**Primary MITRE:** `T1568.001 — Dynamic Resolution: Fast Flux DNS`  
**Production rule:** `Suspicious Fast Flux DNS Behavior` · `v1.0`  
**Status:** **✅ Frozen before the official run and exercised successfully**

The engineering goal was not to alert on “a domain has several A records.” Legitimate AWS, Ubuntu and Splunk services also changed answers. The final rule therefore correlates **public DNS answers with destinations the victim actually contacted**, then excludes known benign dynamic domains.

## 🚦 Engineering Snapshot

| Field | Final state |
|---|---|
| Resolver evidence | A + `NOERROR` reply-side telemetry |
| Network evidence | VPC Flow destinations from `10.50.30.20` |
| Behavioral window | 5 minutes |
| Minimum matched public answers | `2+` |
| Minimum matched connections | `3+` |
| Tuning | RFC1918 excluded + benign dynamic-domain lookup |
| Official result | live production alert during Lubaba's frozen run |
| Human boundary | Detection created the lead; SOC/IR decided meaning and response |

## 🔁 Engineering Path

```mermaid
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "29px"
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
    %% 1 · DATA FOUNDATION
    %% =====================================================
    subgraph FOUNDATION[" "]
        direction TB

        H1["📡 1 · DATA FOUNDATION"]

        A["📡 VALIDATE<br/>Resolver + Flow Fields"]

        B["📊 BASELINE<br/>Normal Dynamic DNS"]

        C["🧪 CHALLENGE<br/>Weak Churn Features"]

        H1 ==> A ==> B ==> C
    end


    %% =====================================================
    %% 2 · DETECTION ENGINEERING
    %% =====================================================
    subgraph ENGINEERING[" "]
        direction TB

        H2["🛠️ 2 · DETECTION ENGINEERING"]

        D["🔗 CORRELATE<br/>Answers ↔ Destinations"]

        E["🧹 TUNE<br/>RFC1918 + Benign Lookup"]

        F["🧠 FREEZE<br/>Detection v1.0"]

        H2 ==> D ==> E ==> F
    end


    %% =====================================================
    %% 3 · SOC DELIVERY
    %% =====================================================
    subgraph SOCFLOW[" "]
        direction TB

        H3["🛡️ 3 · SOC DELIVERY"]

        G["🚨 SCHEDULED ALERT<br/>Production Detection"]

        H["🤖 AI EVIDENCE<br/>Contract"]

        I["🔎 SOC INVESTIGATION<br/>Human Validation"]

        H3 ==> G ==> H ==> I
    end


    %% =====================================================
    %% KEEP THE THREE STAGES PARALLEL
    %% =====================================================
    FOUNDATION ==> ENGINEERING
    ENGINEERING ==> SOCFLOW


    %% =====================================================
    %% PREMIUM NEON HEADERS
    %% =====================================================
    classDef dataHeader fill:#075985,stroke:#67e8f9,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;

    classDef engHeader fill:#7c2d12,stroke:#fb923c,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;

    classDef socHeader fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:34px,font-weight:bold;

    class H1 dataHeader;
    class H2 engHeader;
    class H3 socHeader;


    %% =====================================================
    %% DATA FOUNDATION COLORS
    %% =====================================================
    classDef validate fill:#0c4a6e,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef baseline fill:#172554,stroke:#60a5fa,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef challenge fill:#4338ca,stroke:#a5b4fc,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    class A validate;
    class B baseline;
    class C challenge;


    %% =====================================================
    %% DETECTION ENGINEERING COLORS
    %% =====================================================
    classDef correlate fill:#78350f,stroke:#fbbf24,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef tune fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef freeze fill:#7f1d1d,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    class D correlate;
    class E tune;
    class F freeze;


    %% =====================================================
    %% SOC DELIVERY COLORS
    %% =====================================================
    classDef alert fill:#991b1b,stroke:#f87171,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef ai fill:#581c87,stroke:#f0abfc,stroke-width:6px,color:#ffffff,font-size:29px,font-weight:bold;

    classDef investigation fill:#065f46,stroke:#4ade80,stroke-width:7px,color:#ffffff,font-size:29px,font-weight:bold;

    class G alert;
    class H ai;
    class I investigation;


    %% =====================================================
    %% GLOSSY PANELS
    %% =====================================================
    style FOUNDATION fill:#051521,stroke:#22d3ee,stroke-width:4px

    style ENGINEERING fill:#180d05,stroke:#fb923c,stroke-width:4px

    style SOCFLOW fill:#150821,stroke:#d946ef,stroke-width:4px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
```

## 🖼️ Engineering Evidence Highlights

<table>
<tr>
<td width="33%"><img src="../screenshots/detection-engineering/03-resolver-answer-extraction.png" alt="Resolver answer extraction"><br/><sub><b>Resolver semantics:</b> answer-IP extraction validated from the defender DNS path.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/05-answer-network-correlation.png" alt="Answer network correlation"><br/><sub><b>Correlation:</b> returned public answers matched to victim destinations.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/06-final-detection.png" alt="Final detection"><br/><sub><b>Detection v1.0:</b> final correlated rule after weak discriminators were rejected.</sub></td>
</tr>
<tr>
<td width="33%"><img src="../screenshots/detection-engineering/07-triggered-alert-history.png" alt="Triggered alert history"><br/><sub><b>Operationalization:</b> scheduled alert surfaced in Splunk.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/09-ai-triage-result.png" alt="AI triage"><br/><sub><b>AI path:</b> structured triage evidence returned to Splunk.</sub></td>
<td width="33%"><img src="../screenshots/detection-engineering/11-dashboard-detection-overview.png" alt="Dashboard overview"><br/><sub><b>Analyst surface:</b> Detection Overview assembled the investigation signals.</sub></td>
</tr>
</table>

## 🗂️ Start Here

| Artifact | Purpose |
|---|---|
| [`DETECTION-ENGINEERING.md`](DETECTION-ENGINEERING.md) | flagship engineering story |
| [`detection-engineering-validation.md`](detection-engineering-validation.md) | compact PASS/acceptance record |
| [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) | why tempting shortcuts were rejected |
| [`SOC-ANALYST-HANDOFF.md`](SOC-ANALYST-HANDOFF.md) | field/alert contract given to SOC |
| [`DETECTION-ENGINEERING-CLOSEOUT.md`](DETECTION-ENGINEERING-CLOSEOUT.md) | phase closeout and known limitation |
| [`../spl/`](../spl/) | canonical baseline, hunting, detection and validation SPL |
| [`../dashboard/`](../dashboard/) | Dashboard Studio JSON and panels |

> **Engineering principle:** DNS churn is context. Correlated behavior is the signal.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Engineering Story](DETECTION-ENGINEERING.md) · [📊 Dashboard](../dashboard/README.md) · [🔎 SPL](../spl/README.md)

<br/>

**Challenge the feature. Correlate the evidence. Freeze only what survives validation.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
