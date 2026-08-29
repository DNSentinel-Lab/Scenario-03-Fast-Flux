<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=26,20,14,6,1&height=125&section=header&text=%F0%9F%8E%AF%20Private%20Ground%20Truth%20%E2%80%94%20Scenario%2003&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Project%20Lead%20%2F%20Operator&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Private Ground Truth — Scenario 03" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Project_Lead_%2F_Operator-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Private Ground Truth — Scenario 03

> Kept private during the information-separated SOC and IR investigation.
> Defender decisions are now locked and the Scenario 03 closeout is complete.

- **Operator:** [Lubaba](https://github.com/lubaba1513-pixel)

- **UTC start:** `2026-08-28T12:43:43Z`

- **UTC end:** `2026-08-28T12:58:30Z`

- **Flux hostname:** `flux.soclab.abdul4rehman215.tech`

- **TTL at start:** `60 seconds`

- **Node/public-IP map at start:**
  - `dns-flux-node01` → `13.220.94.188`
  - `dns-flux-node02` → `52.73.218.100`
  - `dns-flux-node03` → `54.81.98.44`

- **Rotation transitions (UTC) — first complete controller cycle:**
  - `12:43:46Z` → `dns-flux-node01` → `13.220.94.188`
  - `12:45:47Z` → `dns-flux-node02` → `52.73.218.100`
  - `12:47:48Z` → `dns-flux-node03` → `54.81.98.44`
  - The approved controller continued cycling through the same three-node pool until the official stop.

- **Victim follow-up start/end:**
  - Start: `2026-08-28T12:52:18Z`
  - End: `2026-08-28T12:58:04Z`
  - Victim: `dns-soc-victim01`
  - Resolver: `dns-soc-resolver01` / `10.50.30.10`
  - The victim resolved the Fast Flux hostname and followed the returned IP with HTTP.
  - Successful follow-up was observed across all three controlled destinations with HTTP `200`.

- **Unexpected events:**
  - During pre-flight, the deployed `flux-rotate.sh` SHA-256 differed from the repository copy.
  - The deployed script was inspected rather than replaced blindly.
  - Bash syntax, hostname, Route 53 settings, TTL, three-node pool, and `120-second` rotation interval were independently validated before execution.
  - No material runtime failure occurred during the official Fast Flux run.

- **Rotation stop time:** `2026-08-28T12:58:30Z`
  - Controller stopped cleanly.
  - `flux-rotate.sh` process confirmed no longer running.

- **Cleanup performed after reveal:**
  - **Yes.**
  - Victim follow-up loop stopped cleanly.
  - Fast Flux controller stopped cleanly.
  - Temporary three-node Fast Flux EC2 pool was **stopped/deleted/reset after the exercise**.
  - Exact EC2 teardown UTC timestamp was **not preserved**, so none is claimed.
  - No Scenario 03 RPZ containment was applied because IR concluded containment was not required.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎯 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
