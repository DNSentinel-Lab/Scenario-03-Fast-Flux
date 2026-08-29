# Scenario 03 IR Timeline

| UTC | Event | Evidence |
|---|---|---|
| `2026-08-28 12:20:10.186576` | Expanded Unbound scope first observed Scenario 03 domain from 10.50.30.20 | E09 |
| `2026-08-28 12:20:26` | Broader IR VPC Flow search first saw connection to 13.220.94.188 | E06 / broader-search notes |
| `2026-08-28 12:24:57` | Earliest answer transition visible in IR exact transition extraction: 13.220.94.188 | E04 |
| `2026-08-28 12:46:53` | Resolver answer transition to 52.73.218.100 | E04 |
| `2026-08-28 12:47:08` | VPC Flow first seen to 52.73.218.100 in IR narrow window | E06 |
| `2026-08-28 12:47:58` | Resolver answer transition to 54.81.98.44 | E04 |
| `2026-08-28 12:48:57` | VPC Flow first seen to 54.81.98.44 in IR narrow window | E06 |
| `2026-08-28 12:50:00` | Production Suspicious Fast Flux DNS Behavior alert event | SOC handoff |
| `2026-08-28 12:50:19` | Resolver answer transition back to 13.220.94.188 | E04 |
| `2026-08-28 12:51:53` | CloudTrail StartSession to victim by IAM user musfira | E13/E14 |
| `2026-08-28 12:52:05` | Victim journal: ssm-user -> sudo/su -> root session opened | E11 |
| `2026-08-28 12:52:38` | Resolver answer transition to 52.73.218.100 | E04 |
| `2026-08-28 13:04:55.345817` | Expanded Unbound scope last seen | E09 |
| `2026-08-29 ~06:49 UTC` | IR current DNS activity check: zero matching events | E07 |
| `2026-08-29 ~06:50 UTC` | IR current network activity check: zero matching connections | E08 |
| `2026-08-29 ~07:43 UTC` | Resolver identity and safe-state checks performed | E18/E19 |
| `2026-08-29 07:55 UTC` | Final victim DNS verification: unrelated DNS works; flux returns public answer with live TTL 60 | E20 |