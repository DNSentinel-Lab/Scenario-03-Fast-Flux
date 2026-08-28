# Scenario 03 IR Response Playbook — Sonia

## Gate 1 — independent validation

- review the SOC handoff;
- inspect Resolver Query Logs and VPC Flow evidence directly;
- confirm the affected namespace and client scope;
- record whether containment is justified.

## Gate 2 — approved containment

If justified, apply the narrow existing DNS response path to the Scenario 03 namespace only. Do not globally block the victim and do not treat AI output as authorization.

## Gate 3 — verification

Capture before/after evidence showing that the victim no longer follows the original rotating public destinations and instead receives the approved blocked/sinkhole outcome.

Also verify normal unrelated DNS still resolves.

## Gate 4 — safe reset

Return RPZ/response policy to its normal safe state and verify the temporary Scenario 03 change is removed.

Official commands and screenshots are intentionally left blank until the response is actually performed.
