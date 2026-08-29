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
flowchart LR
    A["📡 Validate<br/>Resolver + Flow Fields"] --> B["📊 Baseline<br/>Normal Dynamic DNS"]
    B --> C["🧪 Challenge<br/>Weak Churn Features"]
    C --> D["🔗 Correlate<br/>Answers ↔ Destinations"]
    D --> E["🧹 Tune<br/>RFC1918 + Benign Lookup"]
    E --> F["🧠 Freeze<br/>Detection v1.0"]
    F --> G["🚨 Scheduled<br/>Alert"]
    G --> H["🤖 AI<br/>Evidence Contract"]
    H --> I["🔎 SOC<br/>Investigation"]

    classDef eng fill:#3b1d0b,stroke:#f97316,color:#fff,stroke-width:2px;
    classDef data fill:#0f2940,stroke:#38bdf8,color:#fff,stroke-width:2px;
    classDef soc fill:#082f49,stroke:#22d3ee,color:#fff,stroke-width:2px;
    class A,B data;
    class C,D,E,F,G,H eng;
    class I soc;
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
