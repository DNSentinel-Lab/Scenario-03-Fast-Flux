# AI Validation — Scenario 03

## Result

**PARTIALLY CORRECT**

## Correct
- Correct client, domain, three IPs and alert connection count.
- Appropriate `T1568.001` and Command & Control context.
- Explicitly required human validation.
- Correctly avoided declaring confirmed malware, malicious C2 or malicious infrastructure.
- Correctly identified missing TTL/history, endpoint/process, reputation/ownership and flow context.

## Partial / limitations
- Some statements treated the alert-supplied DNS-to-IP correlation as established, while the raw Unbound events displayed during the investigation did not independently expose answer IP values.
- AI output preceded the analyst's full baseline, scope, benign-lookup and detailed manual VPC Flow findings, so those were absent from the advisory summary.

## Human decision
AI was retained as advisory evidence only. Final disposition remained a human SOC decision.
