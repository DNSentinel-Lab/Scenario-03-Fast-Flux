<a id="top"></a>

> 🧭 [Scenario 03](../README.md) › **SOC Analyst / Threat Hunter**

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Role](https://img.shields.io/badge/Role-SOC_Analyst%2FThreat_Hunter-3949AB?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Abdul--Rehman-06B6D4?style=flat-square)

</div>

# 🔎 SOC Analyst / Threat Hunter

**Owner:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Official investigation:** ✅ Complete  
**Final SOC disposition:** **INCONCLUSIVE — ESCALATION WARRANTED**

Abdul-Rehman's workspace records the defender-only Scenario 03 investigation: live alert triage, raw DNS validation, VPC Flow correlation, false-positive tuning checks, scope, baseline, AI validation, 5W1H and the formal handoff to Sonia.

## Start here

- [`SOC-ANALYST-INVESTIGATION.md`](SOC-ANALYST-INVESTIGATION.md) — flagship investigation story
- [`5W1H.md`](5W1H.md) — final structured case record
- [`AI-VALIDATION.md`](AI-VALIDATION.md) — human review of the AI output
- [`SOC-TO-IR-HANDOFF.md`](SOC-TO-IR-HANDOFF.md) — evidence-limited handoff to Sonia
- [`SPL-QUERY-INDEX.md`](SPL-QUERY-INDEX.md) — investigation search index
- [`TROUBLESHOOTING-NOTES.md`](TROUBLESHOOTING-NOTES.md) — curated investigation friction and lessons
- [`evidence/`](evidence/) — curated SOC evidence

## Final analyst result

```text
Fast Flux-like behavior: Medium-High confidence
Malicious attribution:   Low confidence
One internal client in scope
AI: Partially Correct
Disposition: INCONCLUSIVE — ESCALATION WARRANTED
```

> The SOC did not fail by avoiding a malware verdict. It succeeded by escalating exactly the uncertainty that required stronger IR evidence.

[🏠 Scenario Home](../README.md) · [🛡️ IR Handoff](SOC-TO-IR-HANDOFF.md) · [⬆ Back to top](#top)
