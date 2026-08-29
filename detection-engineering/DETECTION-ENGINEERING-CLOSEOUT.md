# Detection Engineering Closeout — Scenario 03

## Status

**Complete, frozen, and exercised in the official Scenario 03 run.**

## Completed technical work

- Unbound DNS field validation.
- VPC Flow field validation.
- Network and DNS baselining.
- Resolver Query Log discovery in `aws:s3`.
- Direct extraction of returned DNS answer IPs.
- Generic DNS churn hunting.
- False-positive analysis against legitimate AWS/Ubuntu/Splunk dynamic services.
- DNS-answer-to-network-destination matching.
- RFC1918 exclusion.
- Lookup-based benign-domain tuning.
- Final behavioral detection thresholds.
- MITRE `T1568.001` mapping.
- Medium severity rationale.
- Saved scheduled alert every five minutes.
- Triggered-alert validation during controlled engineering rotation.
- AI webhook contract integration.
- Successful AI summary write-back to `index=dns_soc_ai`.
- Dashboard with Detection Overview and Detection Context tabs.
- Official-run production alert generated while Detection v1.0 remained frozen.
- Defender handoff consumed by Abdul-Rehman during the completed SOC investigation.

## Final behavioral statement

The detection does not fire because the lab domain is named `flux.soclab...`. It identifies domains whose DNS A-record answers change and whose returned public IPs are subsequently contacted by the victim in the same 5-minute bucket, then removes known benign dynamic services using a lookup.

## Official exercise proof

The live Scenario 03 alert surfaced the controlled scenario domain and the same three public destinations later validated through SOC/IR evidence. The SOC did not modify the rule during investigation.

## Known limitation

The final lab implementation still uses victim IP `10.50.30.20` in the VPC Flow subsearch. A future enterprise-generalized version should derive/normalize client identity rather than pinning the rule to one lab victim.

## Handoff outcome

Detection Engineering handed a production lead to SOC. SOC escalated the unresolved attribution questions to IR. IR independently strengthened DNS and host context and ultimately classified the activity as controlled/expected with no containment required.
