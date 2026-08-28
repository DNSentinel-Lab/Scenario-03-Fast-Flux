# Scenario 03 SPL Workspace

This folder preserves the clean production Detection Engineering artifacts for **Fast Flux DNS**.

| File | Purpose |
|---|---|
| [`baseline.spl`](baseline.spl) | victim network + DNS baseline searches |
| [`hunting.spl`](hunting.spl) | public destination churn + Resolver answer churn hunts |
| [`detection.spl`](detection.spl) | frozen Detection v1.0 |
| [`validation.spl`](validation.spl) | reusable tuning/final-output validation |
| [`fastflux_benign_domains.csv`](fastflux_benign_domains.csv) | observed benign dynamic-domain tuning lookup |
| [`scheduled-alert.md`](scheduled-alert.md) | production alert settings |
| [`engineering-validation/`](engineering-validation/) | tested intermediate hunts/hypotheses retained for provenance |

## Final behavioral boundary

```text
same DNS domain
+
2+ public returned answer IPs
+
victim connections to those same answer IPs
+
3+ matched connections
+
5-minute bucket
+
known benign dynamic domains removed
```

The rule maps to `T1568.001 — Dynamic Resolution: Fast Flux DNS` and is Medium severity because dynamic resolution can also be legitimate.
