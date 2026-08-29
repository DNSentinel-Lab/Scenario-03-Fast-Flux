<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,20,24,26&height=125&section=header&text=%F0%9F%94%8E%20Scenario%2003%20%E2%80%94%20SOC%20Investigation%20SPL%20Index&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 03 — SOC Investigation SPL Index" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

`split/` is not used here; all executed investigation searches are stored in [`spl/`](spl/). The production detection itself remained frozen during the SOC investigation.

| # | Search | Purpose |
|---:|---|---|
| 01 | [`01-monitoring-readiness-dns.spl`](spl/01-monitoring-readiness-dns.spl) | prove live Unbound telemetry |
| 02 | [`02-monitoring-readiness-vpc.spl`](spl/02-monitoring-readiness-vpc.spl) | prove live VPC Flow telemetry |
| 03 | [`03-preexisting-alert-raw-dns.spl`](spl/03-preexisting-alert-raw-dns.spl) | inspect older unrelated alert context |
| 04 | [`04-live-domain-raw-dns.spl`](spl/04-live-domain-raw-dns.spl) | raw scenario-domain DNS evidence |
| 05 | [`05-live-domain-expanded-fields.spl`](spl/05-live-domain-expanded-fields.spl) | inspect extracted DNS fields / answer-IP limitation |
| 06 | [`06-vpc-flow-raw-three-ips.spl`](spl/06-vpc-flow-raw-three-ips.spl) | raw victim-to-three-IP flows |
| 07 | [`07-vpc-flow-summary-three-ips.spl`](spl/07-vpc-flow-summary-three-ips.spl) | per-IP count/time/port/action summary |
| 08 | [`08-benign-lookup-contents.spl`](spl/08-benign-lookup-contents.spl) | inspect tuned benign dynamic services |
| 09 | [`09-benign-lookup-no-match.spl`](spl/09-benign-lookup-no-match.spl) | prove scenario domain absent from lookup |
| 10 | [`10-scope-single-client.spl`](spl/10-scope-single-client.spl) | scope unique internal clients |
| 11 | [`11-scope-query-type-response.spl`](spl/11-scope-query-type-response.spl) | confirm A / NOERROR scope detail |
| 12 | [`12-baseline-top-a-domains.spl`](spl/12-baseline-top-a-domains.spl) | ranked client A-query baseline |
| 13 | [`13-baseline-deviation.spl`](spl/13-baseline-deviation.spl) | supporting deviation calculation |
| 14 | [`14-ai-search.spl`](spl/14-ai-search.spl) | retrieve Scenario 03 AI events |
| 15 | [`15-ai-expanded-fields.spl`](spl/15-ai-expanded-fields.spl) | expose nested AI/alert fields |
| 16 | [`16-ai-raw.spl`](spl/16-ai-raw.spl) | raw AI JSON review |

[`ALL-SOC-INVESTIGATION-QUERIES.spl`](spl/ALL-SOC-INVESTIGATION-QUERIES.spl) preserves the complete executed SOC query set in one file.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
