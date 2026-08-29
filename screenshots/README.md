# Scenario 03 Screenshot Navigation

The public repository keeps screenshots curated by purpose rather than reproducing every image captured during engineering and execution.

## Engineering visual evidence

### [`infrastructure/`](infrastructure/)

Build/validation evidence for the controlled endpoint pool, Route 53 record, controller rotation, authoritative resolution, victim follow-up and VPC Flow visibility.

### [`detection-engineering/`](detection-engineering/)

Detection Engineering evidence: data validation, baseline, Resolver answer extraction, benign dynamic-service noise, answer/network correlation, Detection v1.0, alerting, AI and Dashboard Studio.

### [`troubleshooting/`](troubleshooting/)

Only engineering problems that changed the design: RFC1918 contamination, Resolver data-source discovery, rejected churn-rate feature, webhook schema failure and successful API-boundary isolation.

## Official exercise visual evidence

The execution evidence is stored inside the role workspace that owns it:

- 🎯 [`../attacker/evidence/`](../attacker/evidence/) — Lubaba's operator evidence
- 🔎 [`../soc/evidence/`](../soc/evidence/) — Abdul-Rehman's SOC investigation evidence
- 🛡️ [`../ir/evidence/`](../ir/evidence/) — Sonia's IR/Defender evidence

This avoids duplicating the same evidence in several folders while keeping the repository story clear.

## Presentation rule

A screenshot should answer a technical question. The flagship role documents use only the strongest images; the remaining curated evidence stays available through each role's evidence index.
