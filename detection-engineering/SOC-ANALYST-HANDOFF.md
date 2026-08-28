# SOC Analyst Handoff — Scenario 03 Fast Flux DNS

## Alert

**Suspicious Fast Flux DNS Behavior**

## MITRE

`T1568.001 — Dynamic Resolution: Fast Flux DNS`

## Severity

Medium

## What the detection proves

Within a 5-minute behavioral bucket, the same domain had at least two DNS-returned public IPs and the victim made at least three connections to IPs that matched those DNS answers. Known benign dynamic services were excluded through the tuning lookup.

## What the detection does not prove

It does not by itself prove malware, command-and-control, or malicious ownership. Legitimate dynamic infrastructure exists. The analyst must validate raw DNS answers, connection timing, domain context, scope, and any other endpoint/cloud evidence.

## Key fields

- `src_ip`
- `query_name`
- `matched_connections`
- `unique_matched_ips`
- `matched_ips`
- `detection_reason`
- AI advisory summary in `index=dns_soc_ai`

## Recommended investigation pivots

1. Review the Resolver Query Log events for the alert domain.
2. Confirm answer-IP changes and timestamps.
3. Review VPC Flow events from the source host to each matched answer IP.
4. Compare the domain against the benign dynamic-domain lookup and business context.
5. Check whether other internal clients show the same domain/IP pattern.
6. Treat the AI summary as advisory only.
7. If suspicious behavior is confirmed, hand off to IR/Defender for domain-level containment/sinkhole action.
