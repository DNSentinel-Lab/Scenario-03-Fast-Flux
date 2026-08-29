# Scenario 03 — Final Operator Ground Truth

> This record became reveal-ready only after SOC and IR decisions were locked.

## Exercise identity

- Operator: **Lubaba**
- Controller host: `dns-attack01`
- Controller: `/opt/dnsentinel/flux-rotate.sh`
- Domain: `flux.soclab.abdul4rehman215.tech`
- Configured TTL: `60` seconds
- Defender resolver used by victim: `10.50.30.10`

## Exercise-time node map

| Node | Public IP |
|---|---|
| `dns-flux-node01` | `13.220.94.188` |
| `dns-flux-node02` | `52.73.218.100` |
| `dns-flux-node03` | `54.81.98.44` |

## Controller timeline

```text
2026-08-28T12:43:43Z  official controller begins
2026-08-28T12:43:46Z  node01 → 13.220.94.188
2026-08-28T12:45:47Z  node02 → 52.73.218.100
2026-08-28T12:47:48Z  node03 → 54.81.98.44
2026-08-28T12:53:53Z  later captured node03 UPSERT
2026-08-28T12:55:57Z  next cycle node01 UPSERT
2026-08-28T12:58:30Z  official controller ends
```

## Victim follow-up

```text
2026-08-28T12:52:18Z  follow-up begins
node01 answer/contact → HTTP 200
node02 answer/contact → HTTP 200
node03 answer/contact → HTTP 200
2026-08-28T12:58:04Z  follow-up ends
```

In the preserved victim evidence, `remote_ip` matched the DNS-returned address.

## Controller integrity note

The deployed controller SHA256 differed from the repository copy during pre-flight. The deployed file was not silently replaced. Its content, Bash syntax and material configuration were validated before execution; the approved record name, TTL, node list, UPSERT behavior and 120-second wait were confirmed.

## Final operator outcome

The approved controller produced real changing A-record behavior across the three controlled endpoints. The victim followed those answers through the defender DNS path and established successful HTTP connections. Both live loops were stopped cleanly.

After the exercise, the three temporary Fast Flux EC2 nodes were stopped/deleted/reset. The exact teardown timestamp is not contained in the attached operator evidence set.
