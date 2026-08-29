<a id="top"></a>

# 🧾 Scenario 03 Evidence Center

**Scenario status:** ✅ Complete

This workspace connects the evidence preserved by each role without flattening the case into one screenshot dump.

## Evidence architecture

```text
Infrastructure + Detection Engineering
        ↓
Official Operator Ground Truth
        ↓
SOC Defender Evidence
        ↓
IR Independent Validation
        ↓
Final Comparison / Closeout
```

## 🏗️ Infrastructure / Detection Engineering

- [`../screenshots/infrastructure/`](../screenshots/infrastructure/) — endpoint pool, Route 53 record, rotation, authoritative validation, victim follow-up and VPC Flow proof
- [`../screenshots/detection-engineering/`](../screenshots/detection-engineering/) — field validation, baseline, Resolver answer extraction, tuning, final detection, alert, AI and dashboard
- [`ENGINEERING-EVIDENCE-MANIFEST.md`](ENGINEERING-EVIDENCE-MANIFEST.md) / [`ENGINEERING-EVIDENCE-MANIFEST.csv`](ENGINEERING-EVIDENCE-MANIFEST.csv) — preserved engineering evidence integrity index
- [`engineering-validation/`](engineering-validation/) — validated infrastructure/test scripts

## 🎯 Operator evidence — Lubaba

[`../attacker/evidence/`](../attacker/evidence/) preserves the reveal-ready official execution set:

- authoritative pre-exercise state;
- three-node health/public-IP map;
- official controller start;
- first complete rotation cycle;
- victim follow-up transitions;
- victim stop;
- controller stop/process proof.

Ground truth: [`../attacker/GROUND-TRUTH.md`](../attacker/GROUND-TRUTH.md)

## 🔎 SOC evidence — Abdul-Rehman

[`../soc/evidence/`](../soc/evidence/) preserves the curated SOC investigation set:

- telemetry readiness;
- live alert and repeated trigger;
- raw Unbound evidence;
- VPC Flow raw + summary views;
- benign lookup contents/no-match;
- one-client scope;
- baseline ranking/deviation;
- AI events, expanded fields and raw JSON.

Evidence index: [`../soc/evidence/README.md`](../soc/evidence/README.md)

## 🛡️ IR evidence — Sonia

[`../ir/evidence/`](../ir/evidence/) preserves the curated defender-response set:

- AWS sourcetype inventory;
- independent three-IP Resolver answer history;
- exact answer transitions from `query_timestamp`;
- historical TTL evidence limitation;
- victim-to-three-IP VPC Flow correlation;
- current activity checks;
- one-client scope;
- endpoint-telemetry gap;
- SSM/journal/shell-history context;
- cron/process checks;
- RPZ safe state;
- Unbound health;
- final victim DNS validation.

Evidence index: [`../ir/evidence/README.md`](../ir/evidence/README.md)

## 🎭 Final comparison

[`../exercise/final-comparison.md`](../exercise/final-comparison.md) is the only place where operator ground truth is intentionally compared with Detection v1.0, AI, SOC and IR after the information-separation gate was closed.

## 🧹 Cleanup evidence note

The controller and victim loop have explicit preserved stop evidence. The three temporary flux EC2 nodes were stopped/deleted/reset after the exercise, based on the final team closeout record. The exact EC2 teardown timestamp/screenshot is not present in the attached evidence packages, so the repository records the cleanup outcome without fabricating a timestamp or screenshot.


## Claim-to-evidence map

[`CLAIM-TO-EVIDENCE-MAP.md`](CLAIM-TO-EVIDENCE-MAP.md) connects the major final claims to the exact operator/SOC/IR evidence that supports them.

## Final closeout integrity

- [`FINAL-CLOSEOUT-MANIFEST.md`](FINAL-CLOSEOUT-MANIFEST.md) / [`FINAL-CLOSEOUT-MANIFEST.csv`](FINAL-CLOSEOUT-MANIFEST.csv) — key final documentation and canonical technical artifacts.
- [`FINAL-CLOSEOUT-SHA256SUMS.txt`](FINAL-CLOSEOUT-SHA256SUMS.txt) — SHA-256 list for the closeout artifact set.

## Evidence handling rules

- original role preservation packages remain the source archives;
- curated GitHub copies are used for readable case documentation;
- claims must point to the evidence source that actually supports them;
- no screenshot is altered to change IPs, timestamps, fields or outputs;
- no missing artifact is invented to make the closeout appear more complete.

[🏠 Scenario Home](../README.md) · [⬆ Back to top](#top)
