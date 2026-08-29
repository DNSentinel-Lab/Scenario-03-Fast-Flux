<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,20,24,26&height=190&section=header&text=%F0%9F%94%8E%20SOC%20SPL%20Investigation%20Map&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Abdul-Rehman%20%C2%B7%20Defender%20Query%20Lifecycle&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🔎 SOC SPL Investigation Map" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Telemetry%20Readiness%20%E2%86%92%20Alert%20%E2%86%92%20DNS%20%E2%86%92%20Flow%20%E2%86%92%20Tuning%20%E2%86%92%20Scope%20%E2%86%92%20Baseline%20%E2%86%92%20AI" alt="🔎 SOC SPL Investigation Map workflow" />

![Queries](https://img.shields.io/badge/SOC_SPL-16_Stages-22D3EE?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🔎 SOC Workspace](../README.md) · [📘 Query Index](../SPL-QUERY-INDEX.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 03 SOC — Query Lifecycle

These searches preserve the analyst's actual progression from data readiness to evidence-limited escalation.

```mermaid
flowchart LR
    A["🩺 DNS Readiness"] --> B["🌐 VPC Flow Readiness"]
    B --> C["🚨 Existing / Live Alert"]
    C --> D["📡 Raw DNS"]
    D --> E["🌐 Flow Correlation"]
    E --> F["🧹 Benign Lookup"]
    F --> G["🎯 Scope"]
    G --> H["📊 Baseline"]
    H --> I["🤖 AI Validation"]
    I --> J["📨 IR Handoff"]
```

| Stage | Search |
|---|---|
| DNS telemetry readiness | [`01-monitoring-readiness-dns.spl`](01-monitoring-readiness-dns.spl) |
| VPC Flow readiness | [`02-monitoring-readiness-vpc.spl`](02-monitoring-readiness-vpc.spl) |
| pre-existing alert raw DNS | [`03-preexisting-alert-raw-dns.spl`](03-preexisting-alert-raw-dns.spl) |
| live-domain raw DNS | [`04-live-domain-raw-dns.spl`](04-live-domain-raw-dns.spl) |
| expanded DNS fields | [`05-live-domain-expanded-fields.spl`](05-live-domain-expanded-fields.spl) |
| raw three-IP flows | [`06-vpc-flow-raw-three-ips.spl`](06-vpc-flow-raw-three-ips.spl) |
| summarized three-IP flows | [`07-vpc-flow-summary-three-ips.spl`](07-vpc-flow-summary-three-ips.spl) |
| benign lookup contents | [`08-benign-lookup-contents.spl`](08-benign-lookup-contents.spl) |
| benign lookup no-match | [`09-benign-lookup-no-match.spl`](09-benign-lookup-no-match.spl) |
| one-client scope | [`10-scope-single-client.spl`](10-scope-single-client.spl) |
| query type / response scope | [`11-scope-query-type-response.spl`](11-scope-query-type-response.spl) |
| baseline top A domains | [`12-baseline-top-a-domains.spl`](12-baseline-top-a-domains.spl) |
| baseline deviation | [`13-baseline-deviation.spl`](13-baseline-deviation.spl) |
| AI search | [`14-ai-search.spl`](14-ai-search.spl) |
| AI expanded fields | [`15-ai-expanded-fields.spl`](15-ai-expanded-fields.spl) |
| AI raw output | [`16-ai-raw.spl`](16-ai-raw.spl) |

[`ALL-SOC-INVESTIGATION-QUERIES.spl`](ALL-SOC-INVESTIGATION-QUERIES.spl) preserves the complete executed query set in one file.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🔎 SOC Workspace](../README.md) · [📘 Query Index](../SPL-QUERY-INDEX.md) · [🧾 Evidence](../evidence/README.md)

<br/>

**Searches are preserved in the order the analyst needed the questions answered.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
