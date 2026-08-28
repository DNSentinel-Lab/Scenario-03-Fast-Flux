# Scenario 03 AI-Assisted Alert Summarization

**Status:** ✅ Engineering integration validated  
**Decision authority:** Human SOC Analyst

Scenario 03 reuses the shared DNSentinel Flask/OpenAI/HEC bridge. No second AI service was built inside this repository.

```text
Detection v1.0
→ Scheduled Splunk alert
→ native webhook
→ dns-soc-ai-bridge
→ OpenAI
→ Splunk HEC
→ index=dns_soc_ai
→ human SOC validation
```

The scenario-specific contract and troubleshooting record are in [`scenario-03-ai-mapping.md`](scenario-03-ai-mapping.md). Reusable validation searches are in [`ai-validation-searches.spl`](ai-validation-searches.spl).

> AI summarizes the evidence. It does not decide maliciousness or authorize containment.
