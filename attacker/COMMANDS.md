<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=26,20,14,6,1&height=125&section=header&text=%F0%9F%8E%AF%20Scenario%2003%20%E2%80%94%20Operator%20Command%20Index&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Scenario 03 — Operator Command Index" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 💻 Scenario 03 — Operator Command Index

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

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
