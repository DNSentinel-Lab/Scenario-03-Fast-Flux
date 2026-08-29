# Scenario 03 AI-Assisted Alert Summarization

**Engineering integration:** ✅ Validated  
**Official exercise validation:** ✅ Complete  
**SOC grade:** **PARTIALLY CORRECT**  
**Decision authority:** Human SOC Analyst / IR

Scenario 03 reused the shared DNSentinel Flask/OpenAI/HEC bridge. No second AI service was built inside this repository.

```text
Detection v1.0
→ scheduled Splunk alert
→ native webhook
→ dns-soc-ai-bridge
→ OpenAI
→ Splunk HEC
→ index=dns_soc_ai
→ human SOC validation
```

## Official exercise result

During the official Scenario 03 investigation, the AI correctly:

- identified the client/domain and three alert IPs;
- mapped the behavior to `T1568.001`;
- kept Command & Control as behavioral context;
- required human validation;
- avoided declaring confirmed malware or malicious C2;
- listed missing evidence such as TTL/history, endpoint/process context and infrastructure attribution.

The SOC still graded it **Partially Correct** because some DNS-to-IP statements depended on the production alert correlation and the AI did not initially contain the analyst's later baseline, one-client scope, benign-lookup result or full manual VPC Flow validation.

The final operating sequence remained:

```text
raw evidence
→ analyst hypothesis
→ AI review
→ AI validation
→ human disposition
```

See:

- [`scenario-03-ai-mapping.md`](scenario-03-ai-mapping.md) — scenario evidence contract
- [`ai-validation-searches.spl`](ai-validation-searches.spl) — reusable validation searches
- [`../soc/AI-VALIDATION.md`](../soc/AI-VALIDATION.md) — official human validation record

> AI summarized the case. It did not decide maliciousness and did not authorize containment.
