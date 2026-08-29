<a id="top"></a>

> 🧭 [Scenario 03](../README.md) › **Project Lead / Operator**

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Role](https://img.shields.io/badge/Role-Project_Lead%2FOperator-F59E0B?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Lubaba-A855F7?style=flat-square)

</div>

# 🎯 Project Lead / Fast Flux Operator

**Owner:** [Lubaba](https://github.com/lubaba1513-pixel)  
**Official execution:** ✅ Complete  
**MITRE:** `T1568.001 — Dynamic Resolution: Fast Flux DNS`

Lubaba's workspace records the operator side of the official Fast Flux exercise: artifact validation, authoritative pre-flight, controlled Route 53 rotation, victim follow-up, clean shutdown, private ground-truth discipline and final reveal.

The operator did **not** use Splunk results to steer the run. The approved timing and controller logic remained frozen.

## Start here

- [`PROJECT-LEAD-ADVERSARY.md`](PROJECT-LEAD-ADVERSARY.md) — flagship role story
- [`GROUND-TRUTH.md`](GROUND-TRUTH.md) — reveal-ready final operator timeline
- [`COMMANDS.md`](COMMANDS.md) — command index and host ownership
- [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) — curated integrity/execution lessons
- [`SCENARIO-03-ADVERSARY-PLAYBOOK.md`](SCENARIO-03-ADVERSARY-PLAYBOOK.md) — pre-approved execution protocol used for the exercise
- [`evidence/`](evidence/) — curated reveal-ready screenshots
- [`commands/`](commands/) — exact operator command files preserved from the execution package

## Final operator result

```text
Official controller: 12:43:43Z → 12:58:30Z
Victim follow-up:    12:52:18Z → 12:58:04Z
Three controlled public destinations observed
HTTP follow-up returned 200
Controller stopped cleanly
Temporary flux EC2 pool retired after the exercise
```

> The operator story proves what was intentionally generated. The SOC and IR workspaces prove what defenders could establish independently.

[🏠 Scenario Home](../README.md) · [🎬 End-to-End Execution](../SCENARIO-03-EXECUTION.md) · [⬆ Back to top](#top)
