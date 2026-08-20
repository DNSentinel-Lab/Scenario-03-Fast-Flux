# Incident Response Workspace — Scenario 03 Fast Flux DNS

**Status:** Planned.

This folder records the human response decision, approved containment, verification and cleanup/reset actions for the scenario.

## Response rule

The response should prevent or redirect access to the controlled Fast Flux namespace only after analyst confirmation. Verification must show the DNS/network effect, not merely that a rule was saved.

A complete response record should show:

```text
Finding
→ human decision
→ approved action
→ expected technical change
→ observed post-response evidence
→ final verification
```

Do not treat a Splunk alert or AI summary as automatic response authorization.

## Final artifacts later

The exact files depend on the exercise. A completed scenario may include an incident-response note/playbook, containment commands/configuration and a before/after verification record.
