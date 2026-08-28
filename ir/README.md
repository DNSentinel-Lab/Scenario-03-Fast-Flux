# Scenario 03 — Incident Response / Defender

**Owner:** [Sonia](https://github.com/sonia11mansha415)  
**Official response:** ⏳ Pending

The Scenario 02 Unbound/RPZ/sinkhole capability already exists and can be reused. Scenario 03 does **not** claim that containment has happened yet.

## Response sequence

```text
SOC handoff
→ Sonia independently validates DNS + network evidence
→ decide whether response is warranted
→ apply narrow domain-level RPZ/sinkhole/block action if approved
→ verify DNS/network behavior changed
→ prove normal DNS still works
→ reset the temporary response
→ verify safe state
```

Use [`response-playbook.md`](response-playbook.md) during the official run.
