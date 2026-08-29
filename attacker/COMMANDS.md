# Scenario 03 — Operator Command Index

The exact command files used/preserved for the official operator workflow live in [`commands/`](commands/).

| Order | File | Host | Purpose |
|---:|---|---|---|
| 00 | [`00-preflight-host-time.sh`](commands/00-preflight-host-time.sh) | `dns-attack01` | host + UTC validation |
| 01 | [`01-controller-check.sh`](commands/01-controller-check.sh) | `dns-attack01` | controller file/hash/process state |
| 02 | [`02-controller-content-review.sh`](commands/02-controller-content-review.sh) | `dns-attack01` | read-only integrity troubleshooting |
| 03 | [`03-controller-syntax-settings.sh`](commands/03-controller-syntax-settings.sh) | `dns-attack01` | Bash syntax + material settings |
| 04 | [`04-authoritative-dns-baseline.sh`](commands/04-authoritative-dns-baseline.sh) | `dns-attack01` | direct authoritative A/TTL baseline |
| 05 | [`05-flux-node-health.sh`](commands/05-flux-node-health.sh) | `dns-attack01` | live node state/public IP map |
| 06 | [`06-official-controller-start.sh`](commands/06-official-controller-start.sh) | `dns-attack01` | official controller start + output log |
| 07 | [`07-victim-follow-loop.sh`](commands/07-victim-follow-loop.sh) | `dns-soc-victim01` | resolve through defender DNS + HTTP follow-up |
| 08 | [`08-stop-victim.sh`](commands/08-stop-victim.sh) | `dns-soc-victim01` | record follow-up stop after `Ctrl+C` |
| 09 | [`09-stop-controller.sh`](commands/09-stop-controller.sh) | `dns-attack01` | record controller stop + process absence |

These artifacts are preserved for reproducibility. The role narrative intentionally shows only the commands that matter to the story rather than reproducing every terminal line.
