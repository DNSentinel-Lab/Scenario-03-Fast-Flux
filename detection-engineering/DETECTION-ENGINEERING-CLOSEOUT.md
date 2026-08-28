# Detection Engineering Closeout — Scenario 03

## Status

**Complete and validated end-to-end.**

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
- Triggered-alert validation during live controlled rotation.
- AI webhook contract integration.
- Successful AI summary write-back to `index=dns_soc_ai`.
- Dashboard with Detection Overview and Detection Context tabs.

## Final behavioral statement

The detection does not fire because the lab domain is named `flux.soclab...`. It identifies domains whose DNS A-record answers change and whose returned public IPs are subsequently contacted by the victim in the same 5-minute bucket, then removes known benign dynamic services using a lookup.

## Known limitation

The final lab implementation still uses the victim IP `10.50.30.20` in the VPC Flow subsearch. A future enterprise-generalized version should derive/normalize the client identity from broader telemetry rather than pinning the rule to one lab victim.

## Next operational owner

SOC Analyst / Threat Hunter for independent triage and investigation. Incident Response/Defender follows only after analyst evidence and human decision.
