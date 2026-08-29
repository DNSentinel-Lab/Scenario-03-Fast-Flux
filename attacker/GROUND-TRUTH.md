<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=26,20,14,6,1&height=125&section=header&text=%F0%9F%8E%AF%20Scenario%2003%20%E2%80%94%20Final%20Operator%20Ground%20Truth&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Scenario 03 — Final Operator Ground Truth" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Scenario 03 — Final Operator Ground Truth

> This record became reveal-ready only after SOC and IR decisions were locked.

## 📌 Exercise identity

- Operator: **Lubaba**
- Controller host: `dns-attack01`
- Controller: `/opt/dnsentinel/flux-rotate.sh`
- Domain: `flux.soclab.abdul4rehman215.tech`
- Configured TTL: `60` seconds
- Defender resolver used by victim: `10.50.30.10`

## 📌 Exercise-time node map

| Node | Public IP |
|---|---|
| `dns-flux-node01` | `13.220.94.188` |
| `dns-flux-node02` | `52.73.218.100` |
| `dns-flux-node03` | `54.81.98.44` |

## 🕒 Controller timeline

```text
2026-08-28T12:43:43Z  official controller begins
2026-08-28T12:43:46Z  node01 → 13.220.94.188
2026-08-28T12:45:47Z  node02 → 52.73.218.100
2026-08-28T12:47:48Z  node03 → 54.81.98.44
2026-08-28T12:53:53Z  later captured node03 UPSERT
2026-08-28T12:55:57Z  next cycle node01 UPSERT
2026-08-28T12:58:30Z  official controller ends
```

## 📌 Victim follow-up

```text
2026-08-28T12:52:18Z  follow-up begins
node01 answer/contact → HTTP 200
node02 answer/contact → HTTP 200
node03 answer/contact → HTTP 200
2026-08-28T12:58:04Z  follow-up ends
```

In the preserved victim evidence, `remote_ip` matched the DNS-returned address.

## 🔐 Controller integrity note

The deployed controller SHA256 differed from the repository copy during pre-flight. The deployed file was not silently replaced. Its content, Bash syntax and material configuration were validated before execution; the approved record name, TTL, node list, UPSERT behavior and 120-second wait were confirmed.

## 🏁 Final operator outcome

The approved controller produced real changing A-record behavior across the three controlled endpoints. The victim followed those answers through the defender DNS path and established successful HTTP connections. Both live loops were stopped cleanly.

After the exercise, the three temporary Fast Flux EC2 nodes were stopped/deleted/reset. The exact teardown timestamp is not contained in the attached operator evidence set.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
