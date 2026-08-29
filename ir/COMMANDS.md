<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,6,1&height=125&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2003%20%E2%80%94%20IR%20Commands%20and%20Evidence%20Collection%20Index&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 03 — IR Commands and Evidence Collection Index" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧾 Scenario 03 — IR Commands and Evidence Collection Index

The final IR workspace preserves only commands that materially support the investigation and closeout. Minor console navigation/copy-paste mistakes are intentionally excluded.

## 📌 Splunk searches

- [`spl/ir-investigation-searches.spl`](spl/ir-investigation-searches.spl) — source discovery, answer extraction, transition analysis, historical TTL limitation, VPC Flow correlation, current-state checks, scope, endpoint-telemetry discovery and CloudTrail session attribution.

## ✅ Read-only shell validation

- [`shell/victim-readonly-checks.sh`](shell/victim-readonly-checks.sh) — victim-side journal/history/process/cron and DNS checks.
- [`shell/resolver-readonly-validation.sh`](shell/resolver-readonly-validation.sh) — Unbound/RPZ safe-state and resolver checks.

## 💻 Defender-discovered endpoint commands

- [`DEFENDER-DISCOVERED-ENDPOINT-COMMANDS.txt`](DEFENDER-DISCOVERED-ENDPOINT-COMMANDS.txt) — commands found in `/root/.bash_history`. These lines are **evidence**; IR did not re-run them as attack/exercise commands.

## 🧾 Evidence rule

The command ledger distinguishes **commands Sonia executed to investigate** from **commands Sonia discovered as historical endpoint evidence**. That prevents the closeout from confusing forensic collection with scenario generation.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
