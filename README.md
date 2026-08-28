<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=225&section=header&text=Scenario%2003%20%E2%80%94%20Fast%20Flux%20DNS&fontSize=38&fontColor=ffffff&animation=fadeIn&fontAlignY=36&desc=DNSentinel%20Lab%20%7C%20Infrastructure%20%2B%20Detection%20Engineering%20Complete%20%E2%80%94%20Official%20Execution%20Next&descSize=15&descAlignY=58&descColor=FF9F43" width="100%" alt="Scenario 03 — Fast Flux DNS" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=20&duration=2900&pause=900&color=FF9F43&center=true&vCenter=true&repeat=true&width=1080&height=72&lines=Changing+Answers+%E2%86%92+Matched+Destinations+%E2%86%92+Behavioral+Detection;Infrastructure+%E2%9C%85+%7C+Detection+Engineering+%E2%9C%85+%7C+Official+SOC%2FIR+Exercise+Next" alt="Scenario workflow animation" />

![Scenario](https://img.shields.io/badge/Scenario_03-READY_FOR_EXECUTION-F59E0B?style=for-the-badge)
![Infrastructure](https://img.shields.io/badge/Infrastructure-Validated-2EA44F?style=for-the-badge)
![Detection](https://img.shields.io/badge/Detection_Engineering-Complete-2EA44F?style=for-the-badge)
![Splunk](https://img.shields.io/badge/Splunk-Enterprise-000000?style=for-the-badge&logo=splunk&logoColor=white)
![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=for-the-badge)
![AI](https://img.shields.io/badge/AI-Assisted_Triage-Validated-7B2CBF?style=for-the-badge)

**A controlled Fast Flux DNS case file with validated AWS infrastructure, real DNS answer churn, victim follow-up traffic, a tuned Splunk detection, scheduled alerting, AI-assisted context, and a two-tab investigation dashboard. The official attacker → SOC → IR execution is intentionally still pending.**

[🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🔎 Scenario 01](https://github.com/DNSentinel-Lab/Scenario-01-DNS-Recon) · [🧬 Scenario 02](https://github.com/DNSentinel-Lab/Scenario-02-DGA) · [**🔄 Scenario 03**](https://github.com/DNSentinel-Lab/Scenario-03-Fast-Flux) · [🛰️ Scenario 04](https://github.com/DNSentinel-Lab/Scenario-04-DNS-Tunneling)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔄 DNSentinel Scenario 03 — Fast Flux DNS

Scenario 03 asks a harder question than “did one hostname return more than one IP?” Legitimate cloud and CDN services also move between addresses. The engineering goal was therefore to build a controlled moving destination, make the victim genuinely follow those DNS answers, and then detect **DNS-returned public IPs that were actually contacted by the same victim in the same short time window**.

> **Core question:** can we detect and investigate dynamic DNS infrastructure without confusing ordinary cloud/CDN behavior with malicious Fast Flux?

## 🚦 Current Status

| Workstream | Status | Owner |
|---|---|---|
| Fast Flux infrastructure extension | ✅ Complete / validated | [Musfira](https://github.com/MUSFIRA-ZAFAR) |
| Detection Engineering + tuning | ✅ Complete | [Musfira](https://github.com/MUSFIRA-ZAFAR) |
| Scheduled alert + Scenario 03 AI contract | ✅ Validated | [Musfira](https://github.com/MUSFIRA-ZAFAR) |
| Dashboard Studio | ✅ Complete | [Musfira](https://github.com/MUSFIRA-ZAFAR) |
| Official controlled simulation | ⏳ Pending | [Lubaba](https://github.com/lubaba1513-pixel) |
| Independent SOC investigation | ⏳ Pending | [Abdul-Rehman](https://github.com/abdul4rehman215) |
| IR / Defender response | ⏳ Pending | [Sonia](https://github.com/sonia11mansha415) |
| Containment verification + safe reset | ⏳ Pending | Sonia + team |
| Full scenario closeout | ⏳ Pending | Team |

> [!IMPORTANT]
> **Infrastructure complete + Detection Engineering complete does not mean the full scenario is complete.** The official information-separated attacker/SOC/IR exercise still has to be performed and documented.

## 👥 Scenario 03 Roles

| Role | Owner | Responsibility |
|---|---|---|
| Attack / Simulation Operator | Lubaba | execute the frozen controlled Fast Flux exercise and preserve private ground truth |
| SOC Analyst / Threat Hunter | Abdul-Rehman | investigate alerts independently and decide what the evidence proves |
| Detection Engineer | Musfira | infrastructure telemetry validation, baseline, hunts, final SPL, tuning, alert, AI contract and dashboard |
| Incident Responder / Defender | Sonia | independently validate the SOC handoff, apply an approved response, verify and reset |

## 🏗️ Implemented Architecture

```mermaid
flowchart LR
    V[Victim\n10.50.30.20] --> R[Unbound Resolver\n10.50.30.10]
    R --> F[flux.soclab.abdul4rehman215.tech\nTTL 60s]
    F --> N1[Flux Node 01]
    F --> N2[Flux Node 02]
    F --> N3[Flux Node 03]
    N1 --> NET[Victim HTTP Follow-up]
    N2 --> NET
    N3 --> NET
    R --> DNS[Resolver Query Logs / Unbound]
    NET --> FLOW[VPC Flow Logs]
    DNS --> SPL[Splunk Enterprise]
    FLOW --> SPL
    SPL --> DET[Detection v1.0]
    DET --> AI[Shared AI Bridge]
    DET --> SOC[SOC Analyst]
    AI --> SOC
    SOC --> IR[IR / Defender - official run pending]
```

### Controlled Fast Flux pool

| Node | Private IP | Exercise-time public IP* |
|---|---:|---:|
| `dns-flux-node01` | `10.60.10.21` | `13.220.94.188` |
| `dns-flux-node02` | `10.60.10.22` | `52.73.218.100` |
| `dns-flux-node03` | `10.60.10.23` | `54.81.98.44` |

\*Public addresses are **observed run values**, not permanent architecture constants. The rotation script refreshes current node public IPs before each cycle.

The shared infrastructure implementation is documented in the [DNS-Lab-Infrastructure repository](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure).

## ✅ What the Infrastructure Validation Proved

The build was validated beyond “Route 53 changed a record.” The working chain became:

```text
rotation script
→ Route 53 UPSERT
→ authoritative A answer changes
→ resolver cache/TTL refresh
→ victim receives new answer
→ victim connects to that exact IP
→ HTTP 200
→ VPC Flow records the destination
→ Splunk receives the evidence
```

![Victim follows rotating DNS answers](screenshots/infrastructure/06-victim-follows-rotating-answers.png)

*The victim followed the DNS-returned destination and received HTTP 200 from the controlled Fast Flux nodes.*

## 🧠 Detection Engineering — Completed by Musfira

Musfira did not begin with a pre-written Fast Flux rule. The work started with real field validation and repeatedly tested whether the proposed behavior could separate the lab activity from normal AWS/cloud traffic.

```text
validate telemetry
→ baseline normal victim traffic
→ hunt public destination churn
→ discover Resolver answer data in aws:s3
→ extract answers{}.Rdata
→ match DNS answers to VPC destinations
→ test legitimate dynamic services
→ reject weak discriminators
→ tune through a benign lookup
→ freeze Detection v1.0
→ scheduled alert
→ AI contract
→ dashboard
```

### The important false-positive lesson

A simple DNS churn hunt also found legitimate dynamic infrastructure such as AWS SSM, GuardDuty, S3, Route 53, Ubuntu ESM and a Splunk service. That result prevented the project from using the weak rule:

```text
multiple A records = Fast Flux
```

Instead, the final rule requires **DNS answer-to-network destination matching**, short-window concentration and explicit benign tuning.

![DNS churn hunt shows benign noise](screenshots/detection-engineering/04-dns-churn-benign-noise.png)

## 🎯 Detection v1.0

**Name:** `Suspicious Fast Flux DNS Behavior`  
**MITRE:** `T1568.001 — Dynamic Resolution: Fast Flux DNS`  
**Severity:** Medium  
**Behavioral window:** 5 minutes

The rule requires:

```text
A / NOERROR Resolver response
+
public DNS answer
+
victim contacted the same returned IP
+
unique_matched_ips >= 2
+
matched_connections >= 3
+
RFC1918 destinations excluded
+
known benign dynamic domains excluded by lookup
```

The canonical search is preserved in [`spl/detection.spl`](spl/detection.spl).

![Final tuned Fast Flux detection](screenshots/detection-engineering/06-final-detection.png)

> The detection is behavior-based. It does not fire simply because the lab hostname contains the word `flux`.

## 🔔 Operational Alerting + AI Assistance

The frozen rule was operationalized as a scheduled Splunk alert:

```text
Schedule: */5 * * * *
Trigger: Number of Results > 0
Action: Triggered Alerts + Webhook
Webhook: internal dns-soc-ai-bridge route
```

The final result contract includes `alert_id`, `alert_name`, `scenario`, `severity`, `event_time`, `source` and `evidence_json`. The shared bridge then returns advisory context to `index=dns_soc_ai`.

AI remains a second opinion. The final AI result used **medium confidence** and did not claim that Fast Flux-like behavior alone proved malware.

## 📊 Final Dashboard

The final Dashboard Studio export is preserved at [`dashboard/scenario-03-fast-flux-detection.dashboard.json`](dashboard/scenario-03-fast-flux-detection.dashboard.json).

### Detection Overview

![Scenario 03 Detection Overview](screenshots/detection-engineering/11-dashboard-detection-overview.png)

The overview combines detection activity, active answer count, 24-hour answer history and AI-assisted triage.

### Detection Context

![Scenario 03 Detection Context](screenshots/detection-engineering/12-dashboard-detection-context.png)

The context tab keeps the detection name, Medium severity, MITRE `T1568.001`, five-minute window and benign lookup tuning visible to the analyst.

## 🛠️ Engineering Lessons That Changed the Rule

The strongest lessons were not cosmetic fixes. They changed the detection design:

- a stale search window can look like a broken detection;
- private HTTP destinations polluted the first multi-destination threshold, so RFC1918 ranges were excluded;
- time-only DNS/network correlation mixed unrelated domains;
- Resolver Query Logs were already present under generic `aws:s3` and exposed the real `answers{}.Rdata` field;
- DNS churn alone produced legitimate cloud false positives;
- “one answer per response” and “higher churn rate” were both tested and rejected as discriminators;
- the lookup itself needed data-quality validation;
- a working webhook route can still fail at the application schema boundary;
- the dashboard kept a historical fourth IP instead of forcing the display to match the expected three-node story.

See [`detection-engineering/TROUBLESHOOTING-AND-LESSONS.md`](detection-engineering/TROUBLESHOOTING-AND-LESSONS.md).

## 🗂️ Repository Navigation

| Area | Purpose |
|---|---|
| [`detection-engineering/`](detection-engineering/) | full engineering story, validation and lessons |
| [`spl/`](spl/) | baseline, hunts, final detection, validation, alert config and tuning lookup |
| [`dashboard/`](dashboard/) | final Dashboard Studio JSON and five panel searches |
| [`ai/`](ai/) | Scenario 03 payload/bridge mapping and validation artifacts |
| [`evidence/`](evidence/) | engineering evidence and simulation validation references |
| [`screenshots/`](screenshots/) | curated infrastructure, Detection Engineering and troubleshooting images |
| [`attacker/`](attacker/) | official Lubaba execution plan / private ground-truth template |
| [`soc/`](soc/) | Abdul-Rehman investigation template and questions |
| [`ir/`](ir/) | Sonia response playbook — official response still pending |
| [`exercise/`](exercise/) | official execution gates and closeout boundary |

## ⏭️ What Happens Next

The engineering environment should now be treated as frozen for the official exercise.

```text
Lubaba: controlled simulation + private ground truth
        ↓
Detection v1.0 / saved alert / AI / dashboard (unchanged)
        ↓
Abdul-Rehman: independent SOC investigation + disposition
        ↓
Sonia: independent IR validation + approved containment if warranted
        ↓
before/after verification + safe reset
        ↓
team ground-truth reveal + final closeout
```

No official SOC conclusion, containment result or final outcome is claimed in this repository yet.

<div align="center">

### DNSentinel Lab
**Build the telemetry. Prove the detection. Investigate the evidence. Verify the response.**

[⬆ Back to top](#top)

</div>
