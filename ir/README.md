<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,6,1&height=190&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Incident%20Response%20%26%20Defender&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Sonia%20%C2%B7%20Independent%20Validation%20%E2%86%92%20Proportionate%20Decision%20%E2%86%92%20Safe%20State&descSize=15&descAlignY=61&descColor=14B8A6" width="100%" alt="🛡️ Incident Response & Defender" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=14B8A6&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=SOC%20Handoff%20%E2%86%92%20Independent%20DNS%20History%20%E2%86%92%20Current-Risk%20Check%20%E2%86%92%20Host%20Context;Containment%20Gate%20%E2%86%92%20No%20Change%20Required%20%E2%86%92%20RPZ%20%2B%20Resolver%20Safe-State%20Verification" alt="🛡️ Incident Response & Defender workflow" />

![Role](https://img.shields.io/badge/Role-IR%2FDefender-14B8A6?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Sonia-A855F7?style=flat-square) ![Decision](https://img.shields.io/badge/Decision-No_Containment_Required-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 SOC Handoff](../soc/SOC-TO-IR-HANDOFF.md) · [🧾 Evidence](evidence/README.md) · [🎭 Final Comparison](../exercise/final-comparison.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🛡️ Scenario 03 Incident Response Workspace

Sonia's job was not to repeat the SOC investigation or activate RPZ because the mechanism existed. IR independently rebuilt the answer history, strengthened network/host context, measured current risk and changed the environment **only if the evidence justified it**.

## 🚦 Response Snapshot

| Field | IR result |
|---|---|
| Responder | [Sonia](https://github.com/sonia11mansha415) |
| Input | evidence-limited SOC handoff |
| Fast Flux-like behavior | independently confirmed |
| Current matching DNS/network activity | inactive at decision time |
| Endpoint/process telemetry in Splunk | insufficient |
| Defender-side host context | strongly consistent with controlled Scenario 03 follow-up |
| Malicious attribution | not established |
| RPZ/sinkhole | available, not activated |
| Resolver | healthy |
| Final classification | **CONTROLLED / EXPECTED SCENARIO ACTIVITY** |
| Final response | **NO CONTAINMENT REQUIRED** |

## ⚖️ Response Decision Path

```mermaid
flowchart LR
    A["📨 SOC Handoff"] --> B["🔎 Independent DNS History"]
    B --> C["🌐 Network Correlation"]
    C --> D["⏱️ Current Activity Check"]
    D --> E["🖥️ Endpoint / Session Context"]
    E --> F["🧭 Risk + Attribution Decision"]
    F --> G{"⚖️ Is containment proportionate?"}
    G -->|No| H["🛡️ Verify RPZ Safe State"]
    H --> I["✅ Verify Resolver + Victim DNS"]
```

## 🖼️ IR Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/E03-independent-three-ip-dns-answer-history.png" alt="Three-IP DNS history"><br/><sub><b>E03:</b> all three A answers independently recovered.</sub></td>
<td width="33%"><img src="evidence/E04-exact-dns-answer-transition-timeline.png" alt="Answer transition timeline"><br/><sub><b>E04:</b> source-native answer chronology.</sub></td>
<td width="33%"><img src="evidence/E08-current-network-activity-check-zero.png" alt="Current network activity zero"><br/><sub><b>E08:</b> no current matching connections at decision time.</sub></td>
</tr>
<tr>
<td width="33%"><img src="evidence/E12-defender-discovered-scenario-03-shell-history.png" alt="Shell history"><br/><sub><b>E12:</b> defender-discovered host context.</sub></td>
<td width="33%"><img src="evidence/E18-active-rpz-contains-no-scenario-03-flux-rule.png" alt="RPZ safe state"><br/><sub><b>E18:</b> no Scenario 03 enforcing RPZ rule.</sub></td>
<td width="33%"><img src="evidence/E20-final-victim-dns-verification.png" alt="Final victim DNS validation"><br/><sub><b>E20:</b> normal resolver operation verified from the authorized client path.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`INCIDENT-RESPONSE.md`](INCIDENT-RESPONSE.md) — flagship IR story
- [`FINAL-IR-REPORT.md`](FINAL-IR-REPORT.md) — formal closeout
- [`5W1H.md`](5W1H.md) — structured IR record
- [`TIMELINE.md`](TIMELINE.md) — defender timeline
- [`COMMANDS.md`](COMMANDS.md) — evidence-collection ledger
- [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) — curated lessons
- [`spl/README.md`](spl/README.md) — IR search lifecycle
- [`shell/README.md`](shell/README.md) — read-only host-validation path
- [`evidence/README.md`](evidence/README.md) — curated IR evidence

> **Response mechanism ≠ response requirement.** The correct outcome was to leave the resolver unchanged and prove the safe state.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 IR Story](INCIDENT-RESPONSE.md) · [📋 Final Report](FINAL-IR-REPORT.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Strengthen the evidence. Measure current risk. Change only what the evidence justifies.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
