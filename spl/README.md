<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=135&section=header&text=%F0%9F%94%8E%20SPL%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2003%20%E2%80%94%20Fast%20Flux%20DNS&descSize=14&descAlignY=68&descColor=FF9F43" width="100%" alt="🔎 SPL Workspace" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-Planned-6E7781?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-SPL_Workspace-00B8D9?style=flat-square)

[🏠 Scenario Home](../README.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🗂️ All Scenario Repositories](https://github.com/orgs/DNSentinel-Lab/repositories)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

**Status:** Planned — no detection logic is considered final before baseline and controlled testing.

When real searches exist, preserve them as:

```text
spl/
├── baseline.spl
├── hunting.spl
├── detection.spl
└── validation.spl
```

## Purpose

- **baseline.spl** — measure ordinary activity before the simulation;
- **hunting.spl** — analyst pivots that explain the raw behavior;
- **detection.spl** — final tuned scenario detection;
- **validation.spl** — normal-vs-scenario tests and final acceptance checks.

## Rules

- Use the real telemetry fields observed in this lab.
- Keep thresholds evidence-based and record tuning reasons.
- Test false positives deliberately.
- Keep detection logic readable enough for another team member to reproduce.
- Do not copy arbitrary thresholds from a public example or generate a rule around what the AI model prefers.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 03 · Fast Flux DNS**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=75&section=footer" width="100%" alt="footer" />
