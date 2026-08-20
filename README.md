# Scenario 03 — Fast Flux DNS

**Status:** Planned — reuses Scenario 02 resolver/victim platform  
**Primary MITRE ATT&CK:** T1568.001 — Dynamic Resolution: Fast Flux DNS

## Objective

Use the controlled lab namespace to produce a domain whose answers change across multiple team-controlled IP addresses with short TTL behavior, then investigate the DNS and network evidence together.

## Infrastructure dependency

Reuse the Scenario 02 resolver, victim and sinkhole. At preparation time, provision or identify a small set of team-controlled reachable endpoints/IPs and create temporary short-TTL `flux.soclab.abdul4rehman215.tech` DNS behavior. Remove/reset temporary resources after the exercise.

The shared AWS/Splunk platform is not rebuilt inside this repository. Any new AWS resource is designed in the infrastructure project and documented there after it exists.

## Detection focus

- one hostname returning multiple/changing answer IPs;
- short TTL behavior and answer churn across time windows;
- distinct destination count;
- correlation between DNS answers and victim connections;
- VPC Flow evidence for follow-up destinations;
- normal CDN-like or benign address changes considered during tuning;

## Network & protocol view

- Layer 7 DNS: answer IP set, TTL and answer-change timing;
- Layer 4: client connections to returned services/ports where generated;
- Layer 3: changing destination IPs and VPC Flow evidence;
- Endpoint/client: monitored victim identity;
- Containment: resolver block/sinkhole or controlled destination restriction when approved;

DNS is Layer 7 evidence, but the scenario should correlate it with the Layer 3/4, endpoint, cloud or application evidence that actually helps prove the behavior.

## Planned dashboard

The dashboard should follow one shared time range and lead the analyst from summary → behavior → correlation → raw evidence.

- Shared time range plus client/domain/answer filters;
- KPIs: total queries, unique answer IPs, answer changes, TTL summary, unique destinations;
- Answer/IP churn over time;
- TTL distribution and current/previous answer sets;
- Victim follow-up destinations from VPC Flow Logs;
- Before/after containment or temporary-record reset evidence;

See [`dashboard/README.md`](dashboard/README.md) for the planned layout.

## Team

| Role | Member |
|---|---|
| Project Lead / Attack Simulation | Sonia |
| SOC Analyst | Lubaba |
| Detection Engineer | Abdul-Rehman |
| IR / Defender | Musfira |

## Scenario workflow

This repository follows the common 20-part standard:

**Objective → Architecture → Prerequisites → Simulation → Telemetry → Detection → SPL → Alert → AI Triage → SOC Analysis → IR → Evidence → Containment → Verification → Results → MITRE → False Positives → Lessons → Reproduction → Screenshots.**

The working checklist is [`SCENARIO-RUNBOOK.md`](SCENARIO-RUNBOOK.md).

## Repository map

```text
.
├── README.md                 # scenario overview and locked design
├── SCENARIO-RUNBOOK.md       # 20-part execution/documentation checklist
├── dashboard/                # dashboard plan, later final XML/export
├── spl/                      # baseline, hunting, detection and validation SPL
├── ai/                       # scenario profile/payload mapping for shared AI bridge
├── ir/                       # response/containment/verification record
├── evidence/                 # structured ground truth and evidence notes
└── screenshots/              # curated visual evidence
```

The folders are prepared now, but fake implementation artifacts are not. Real `.spl`, dashboard XML, AI profiles and evidence are added only when they have been built and tested.

## Shared project references

- [DNS Lab Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) — shared AWS, DNS, Splunk and AI foundation
- [Scenario infrastructure roadmap](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-infrastructure-roadmap.md) — future EC2/DNS/network changes owned by the infrastructure repository
- [Scenario documentation standard](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure/blob/main/00-project-design/scenario-documentation-standard.md) — common 20-part SOC workflow, dashboard and evidence rules

## Completion condition

The team proves changing controlled answers, correlates them with client network behavior, tunes against benign change patterns, validates AI/SOC analysis, and records cleanup/reset of temporary Fast Flux resources.
