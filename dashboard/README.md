<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=135&section=header&text=%F0%9F%93%8A%20Dashboard%20Workspace&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2003%20%E2%80%94%20Fast%20Flux%20DNS&descSize=14&descAlignY=68&descColor=FF9F43" width="100%" alt="📊 Dashboard Workspace" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-Planned-6E7781?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Dashboard_Workspace-0A84FF?style=flat-square)

[🏠 Scenario Home](../README.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🗂️ All Scenario Repositories](https://github.com/orgs/DNSentinel-Lab/repositories)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

**Status:** Planned. Build from real telemetry after the scenario baseline fields are confirmed.

## Design goal

The dashboard is an investigation surface, not decoration. Every panel must answer a SOC question and use real project fields.

## Shared controls

Start with one **Time Range** input shared by every panel. Add only useful scenario filters such as client/source, query type, response code, domain or VPC/instance identity.

## Planned layout

- Shared time range plus client/domain/answer filters;
- KPIs: total queries, unique answer IPs, answer changes, TTL summary, unique destinations;
- Answer/IP churn over time;
- TTL distribution and current/previous answer sets;
- Victim follow-up destinations from VPC Flow Logs;
- Before/after containment or temporary-record reset evidence;

A useful common shape is:

```text
Input bar: time + scenario filters
Row 1: 4–6 SOC summary KPIs
Row 2: behavior over time
Row 3: DNS pattern/distribution views
Row 4: network/Web/endpoint correlation
Row 5: investigation table
Row 6: response verification when applicable
```

## Quality rules

- Use actual source/sourcetype/field names from the lab.
- Do not depend on a pre-labelled `classification="Suspicious"` training-data field.
- Baseline comes before detection panels are finalized.
- Prefer drilldowns or linked searches that take the analyst to raw evidence.
- Keep the visual language consistent and readable across all four scenarios.
- Save the final dashboard XML/export here only after it is tested.

## Final artifacts later

Expected after implementation:

```text
dashboard/
├── README.md
└── scenario-03-dashboard.xml   # or the actual exported dashboard format used
```

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 03 · Fast Flux DNS**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=75&section=footer" width="100%" alt="footer" />
