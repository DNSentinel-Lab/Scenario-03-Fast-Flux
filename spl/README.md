<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=190&section=header&text=%F0%9F%94%8E%20Fast%20Flux%20SPL%20Workspace&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Baseline%20%E2%86%92%20Hunt%20%E2%86%92%20Detect%20%E2%86%92%20Validate%20%E2%86%92%20Alert&descSize=15&descAlignY=61&descColor=F97316" width="100%" alt="🔎 Fast Flux SPL Workspace" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=F97316&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Baseline%20%E2%86%92%20Hunting%20%E2%86%92%20Detection%20v1.0%20%E2%86%92%20Validation;Canonical%20production%20SPL%20separated%20from%20engineering%20provenance" alt="🔎 Fast Flux SPL Workspace workflow" />

![SPL](https://img.shields.io/badge/SPL-Production_Artifacts-F97316?style=flat-square) ![Detection](https://img.shields.io/badge/Detection-v1.0-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection Engineering](../detection-engineering/README.md) · [📊 Dashboard](../dashboard/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 03 — SPL Workspace

This workspace separates the **clean production path** from intermediate engineering hypotheses retained for provenance.

## 🧭 Canonical Production Path

```mermaid
flowchart LR
    A["📊 baseline.spl"] --> B["🔎 hunting.spl"]
    B --> C["🧠 detection.spl<br/>v1.0"]
    C --> D["✅ validation.spl"]
    D --> E["🚨 scheduled-alert.md"]
    C --> F["🧹 fastflux_benign_domains.csv"]
```

| File | Purpose |
|---|---|
| [`baseline.spl`](baseline.spl) | victim network + DNS baseline |
| [`hunting.spl`](hunting.spl) | public destination churn + Resolver answer churn hunts |
| [`detection.spl`](detection.spl) | frozen Detection v1.0 |
| [`validation.spl`](validation.spl) | reusable tuning/final-output validation |
| [`fastflux_benign_domains.csv`](fastflux_benign_domains.csv) | observed benign dynamic-domain tuning lookup |
| [`scheduled-alert.md`](scheduled-alert.md) | production alert settings |
| [`engineering-validation/`](engineering-validation/) | rejected/intermediate hypotheses preserved for provenance |

## 🧠 Final Behavioral Boundary

```text
same DNS domain
+
2+ public returned answer IPs
+
victim connections to those same answer IPs
+
3+ matched connections
+
5-minute bucket
+
known benign dynamic domains removed
```

> **Why this matters:** the rule does not equate “multiple answers” with Fast Flux. It requires DNS/network correlation and retains benign-dynamic context.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Detection Workspace](../detection-engineering/README.md) · [📊 Dashboard](../dashboard/README.md)

<br/>

**Readable SPL is part of the evidence chain.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
