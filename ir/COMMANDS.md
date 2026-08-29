# Scenario 03 — IR Commands and Evidence Collection Index

The final IR workspace preserves only commands that materially support the investigation and closeout. Minor console navigation/copy-paste mistakes are intentionally excluded.

## Splunk searches

- [`spl/ir-investigation-searches.spl`](spl/ir-investigation-searches.spl) — source discovery, answer extraction, transition analysis, historical TTL limitation, VPC Flow correlation, current-state checks, scope, endpoint-telemetry discovery and CloudTrail session attribution.

## Read-only shell validation

- [`shell/victim-readonly-checks.sh`](shell/victim-readonly-checks.sh) — victim-side journal/history/process/cron and DNS checks.
- [`shell/resolver-readonly-validation.sh`](shell/resolver-readonly-validation.sh) — Unbound/RPZ safe-state and resolver checks.

## Defender-discovered endpoint commands

- [`DEFENDER-DISCOVERED-ENDPOINT-COMMANDS.txt`](DEFENDER-DISCOVERED-ENDPOINT-COMMANDS.txt) — commands found in `/root/.bash_history`. These lines are **evidence**; IR did not re-run them as attack/exercise commands.

## Evidence rule

The command ledger distinguishes **commands Sonia executed to investigate** from **commands Sonia discovered as historical endpoint evidence**. That prevents the closeout from confusing forensic collection with scenario generation.
