# Scenario 03 — Realistic Information-Separated Exercise Protocol

This protocol records how the completed Scenario 03 run protected role separation.

## Frozen before the official start

- Fast Flux infrastructure design;
- `flux-rotate.sh` logic and timing;
- Detection v1.0;
- benign dynamic-domain lookup;
- scheduled alert;
- AI result contract;
- Dashboard Studio searches.

## Operator boundary

Lubaba could see:

- controller host and script;
- authoritative DNS state;
- temporary flux node state;
- controller output;
- victim follow-up output;
- private execution timestamps.

Lubaba did **not** inspect Splunk, Detection v1.0 results, AI triage or the SOC investigation to steer the run.

## SOC boundary

Abdul-Rehman could see only defender evidence: alerting, Unbound, VPC Flow, lookup/baseline context, Dashboard Studio and AI after forming a human hypothesis.

He did not receive:

- controller start/end;
- operator screenshots;
- Route 53 transition sequence;
- private ground truth.

## IR boundary

Sonia received the SOC handoff and defender-side evidence. She independently located stronger Resolver Query Log data and defender-accessible host/context evidence. Hidden operator ground truth remained out of the IR decision process.

## Reveal gate

Operator ground truth became eligible for comparison only after:

```text
SOC disposition locked
→ IR classification locked
→ response decision locked
→ safe-state verification complete
→ final IR conclusion recorded
```

## Why this matters

The goal was not secrecy for its own sake. The goal was to make each role answer the question its evidence allowed.

- The operator proves what was generated.
- Detection proves what the rule surfaced.
- SOC proves what defender telemetry supported at first-line investigation depth.
- IR proves what stronger defender evidence and context justified.

That is why Abdul's `INCONCLUSIVE — ESCALATION WARRANTED` and Sonia's later `CONTROLLED / EXPECTED — NO CONTAINMENT REQUIRED` are both correct within their evidence boundaries.
