> **Closeout note:** This reusable template was prepared before the official investigation. The completed Scenario 03 analyst record is [`SOC-ANALYST-INVESTIGATION.md`](SOC-ANALYST-INVESTIGATION.md).

# Scenario 03 SOC Investigation Template — Abdul-Rehman

## Alert

- Alert time:
- Detection name:
- Source/client:
- Domain:
- Matched connections:
- Unique matched IPs:
- Matched IPs:

## Validate raw evidence

1. Which hostname triggered?
2. Which client was involved?
3. What A-record answers were returned and when?
4. How many unique answer IPs appeared?
5. Did the client connect to those same IPs?
6. Which ports/actions were observed?
7. Does the activity occur in short repeated windows?
8. Is the domain in the benign lookup or supported by known business context?
9. Do other internal clients show the same pattern?
10. What does AI claim, and which claims are actually supported by raw Splunk events?

## Disposition

- Benign / expected
- Suspicious — escalation warranted
- Confirmed within controlled scenario context

Reasoning:

## IR handoff

Only write the handoff after the disposition is locked. Include evidence and uncertainty; do not prescribe an automatic response from AI output alone.
