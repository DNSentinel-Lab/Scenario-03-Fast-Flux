# Scenario 03 Evidence Workspace

**Current state:** Infrastructure + Detection Engineering evidence complete; official execution evidence pending.

## Engineering evidence already preserved

Integrity index: [`ENGINEERING-EVIDENCE-MANIFEST.md`](ENGINEERING-EVIDENCE-MANIFEST.md) / [`ENGINEERING-EVIDENCE-MANIFEST.csv`](ENGINEERING-EVIDENCE-MANIFEST.csv).


- infrastructure build/validation screenshots in [`../screenshots/infrastructure/`](../screenshots/infrastructure/);
- Detection Engineering screenshots in [`../screenshots/detection-engineering/`](../screenshots/detection-engineering/);
- curated troubleshooting evidence in [`../screenshots/troubleshooting/`](../screenshots/troubleshooting/);
- validated infrastructure/simulation scripts in [`engineering-validation/`](engineering-validation/), including the preserved `flux-rotate.sh`;
- final SPL and tuning artifacts in [`../spl/`](../spl/);
- Dashboard Studio JSON in [`../dashboard/`](../dashboard/).

## Official execution evidence still required

The official run should later add:

- Lubaba's private start/end ground truth;
- frozen-detection alert evidence from the official run;
- Abdul-Rehman's independent SOC timeline/disposition;
- Sonia's IR validation, approved action and verification;
- before/after DNS + network evidence;
- cleanup/reset confirmation;
- final ground-truth comparison.

Do not backfill those results from engineering validation traffic.
