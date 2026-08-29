<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,20,24,26&height=190&section=header&text=%F0%9F%94%8E%20SOC%20Analyst%20%26%20Threat%20Hunting&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Abdul-Rehman%20%C2%B7%20Fast%20Flux%20Investigation&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🔎 SOC Analyst & Threat Hunting" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Alert%20%E2%86%92%20Raw%20DNS%20%E2%86%92%20VPC%20Flow%20%E2%86%92%20Benign%20Lookup%20%E2%86%92%20Scope%20%E2%86%92%20Baseline;AI%20Challenge%20%E2%86%92%205W1H%20%E2%86%92%20Evidence-Limited%20IR%20Handoff" alt="🔎 SOC Analyst & Threat Hunting workflow" />

![Role](https://img.shields.io/badge/Role-SOC_Analyst%2FThreat_Hunter-22D3EE?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Abdul--Rehman-06B6D4?style=flat-square) ![Disposition](https://img.shields.io/badge/Disposition-INCONCLUSIVE_%E2%86%92_IR-F59E0B?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection](../detection-engineering/README.md) · [🧾 Evidence](evidence/README.md) · [🛡️ IR](../ir/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 03 SOC Workspace

Abdul-Rehman investigated the live Fast Flux alert **without operator ground truth**. The job was to validate behavior, scope it, challenge false-positive explanations and AI claims, then escalate only the unanswered questions that required stronger defender evidence.

## 🚦 Case Snapshot

| Field | SOC result |
|---|---|
| Analyst | [Abdul-Rehman](https://github.com/abdul4rehman215) |
| Client | `10.50.30.20` |
| Scenario A-query events | **274** |
| Alert-associated public IPs | **3** |
| Manual VPC Flow validation | **37** flows in the narrow window |
| Per-IP manual counts | `14 / 15 / 8` |
| Later detection-side count | **42** for the same 12:50 bucket |
| Benign lookup | scenario domain not present |
| AI grade | **Partially Correct** |
| Fast Flux-like behavior confidence | **Medium-High** |
| Malicious attribution confidence | **Low** |
| Final disposition | **INCONCLUSIVE — ESCALATION WARRANTED** |

> The 37-versus-42 difference is preserved. Manual investigation and the production search used different aggregation/window logic.

## 🔁 Investigation Path

```mermaid
flowchart LR
    A["🚨 Live Alert"] --> B["📡 Raw DNS"]
    B --> C["🌐 VPC Flow"]
    C --> D["🧹 Benign Lookup"]
    D --> E["🎯 Client Scope"]
    E --> F["📊 Baseline"]
    F --> G["🤖 AI Challenge"]
    G --> H["🧭 5W1H"]
    H --> I["📨 IR Handoff"]
```

## 🖼️ SOC Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/E03-live-fast-flux-alert-36.png" alt="Live alert"><br/><sub><b>E03:</b> production Fast Flux lead.</sub></td>
<td width="33%"><img src="evidence/E04-raw-dns-flux-domain.png" alt="Raw DNS"><br/><sub><b>E04:</b> raw defender DNS evidence.</sub></td>
<td width="33%"><img src="evidence/E08-vpc-flow-summary-three-ips.png" alt="Three IP flow summary"><br/><sub><b>E08:</b> network follow-up to all three alert destinations.</sub></td>
</tr>
<tr>
<td width="33%"><img src="evidence/E10-benign-lookup-no-match.png" alt="Benign lookup no match"><br/><sub><b>E10:</b> scenario domain absent from tuning allowlist.</sub></td>
<td width="33%"><img src="evidence/E14-baseline-deviation.png" alt="Baseline deviation"><br/><sub><b>E14:</b> scenario-domain deviation from normal client DNS activity.</sub></td>
<td width="33%"><img src="evidence/E18-ai-raw-json.png" alt="AI raw JSON"><br/><sub><b>E18:</b> AI output inspected as evidence, not verdict.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`SOC-ANALYST-INVESTIGATION.md`](SOC-ANALYST-INVESTIGATION.md) — flagship investigation
- [`5W1H.md`](5W1H.md) — structured case record
- [`AI-VALIDATION.md`](AI-VALIDATION.md) — human review of AI output
- [`SOC-TO-IR-HANDOFF.md`](SOC-TO-IR-HANDOFF.md) — evidence-limited handoff
- [`SPL-QUERY-INDEX.md`](SPL-QUERY-INDEX.md) — executed investigation search map
- [`TROUBLESHOOTING-NOTES.md`](TROUBLESHOOTING-NOTES.md) — investigation lessons
- [`spl/README.md`](spl/README.md) — visual query lifecycle
- [`evidence/README.md`](evidence/README.md) — E01–E18 evidence portal

> **SOC success here was restraint:** confirm the Fast Flux-like behavior, preserve attribution limits, and escalate the questions the available evidence could not answer.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Full Investigation](SOC-ANALYST-INVESTIGATION.md) · [📨 IR Handoff](SOC-TO-IR-HANDOFF.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Validate the behavior. Preserve the limits. Escalate the unanswered questions.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
