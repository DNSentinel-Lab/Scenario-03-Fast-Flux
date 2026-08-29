<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,20,24,26&height=190&section=header&text=%F0%9F%94%8E%20SOC%20Curated%20Evidence&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Abdul-Rehman%20%C2%B7%20E01%E2%80%93E18%20%C2%B7%20Alert%20%E2%86%92%20Scope%20%E2%86%92%20Handoff&descSize=15&descAlignY=61&descColor=22D3EE" width="100%" alt="🔎 SOC Curated Evidence" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=22D3EE&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Lead%20%E2%86%92%20Raw%20DNS%20%E2%86%92%20Network%20Correlation%20%E2%86%92%20Baseline%20%E2%86%92%20AI%20Validation%20%E2%86%92%20Scope" alt="🔎 SOC Curated Evidence workflow" />

![Evidence](https://img.shields.io/badge/SOC_Evidence-E01%E2%80%93E18-22D3EE?style=flat-square) ![Disposition](https://img.shields.io/badge/Disposition-INCONCLUSIVE_%E2%86%92_IR-F59E0B?style=flat-square)

[🏠 Scenario Home](../../README.md) · [🔎 SOC Workspace](../README.md) · [📖 Investigation](../SOC-ANALYST-INVESTIGATION.md) · [🧾 Master Evidence](../../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 03 SOC — Curated Evidence

These artifacts are the public defender-side evidence set used before operator ground truth was revealed.

## 🖼️ Investigation Highlights

<table>
<tr>
<td width="33%"><img src="E03-live-fast-flux-alert-36.png" alt="Live Fast Flux alert"><br/><sub><b>E03:</b> live Fast Flux lead.</sub></td>
<td width="33%"><img src="E04-raw-dns-flux-domain.png" alt="Raw DNS"><br/><sub><b>E04:</b> exact-domain raw DNS evidence.</sub></td>
<td width="33%"><img src="E08-vpc-flow-summary-three-ips.png" alt="VPC Flow summary"><br/><sub><b>E08:</b> three-destination network validation.</sub></td>
</tr>
<tr>
<td width="33%"><img src="E10-benign-lookup-no-match.png" alt="Benign lookup"><br/><sub><b>E10:</b> domain absent from benign lookup.</sub></td>
<td width="33%"><img src="E14-baseline-deviation.png" alt="Baseline deviation"><br/><sub><b>E14:</b> supporting deviation view.</sub></td>
<td width="33%"><img src="E18-ai-raw-json.png" alt="AI raw JSON"><br/><sub><b>E18:</b> raw AI output reviewed by the analyst.</sub></td>
</tr>
</table>

## 📋 Full Evidence Set

| File | What it proves |
|---|---|
| [`E01-dns-telemetry-readiness.png`](E01-dns-telemetry-readiness.png) | Unbound DNS telemetry health before live investigation. |
| [`E02-vpc-flow-telemetry-readiness.png`](E02-vpc-flow-telemetry-readiness.png) | VPC Flow telemetry health before live investigation. |
| [`E03-live-fast-flux-alert-36.png`](E03-live-fast-flux-alert-36.png) | First live Scenario 03 alert lead with 36 matched connections. |
| [`E04-raw-dns-flux-domain.png`](E04-raw-dns-flux-domain.png) | Raw Unbound activity for the Scenario 03 domain. |
| [`E05-dns-expanded-fields.png`](E05-dns-expanded-fields.png) | Expanded DNS fields and answer-IP visibility limitation. |
| [`E06-repeated-alert-42.png`](E06-repeated-alert-42.png) | Repeated trigger/update for the same 12:50 bucket, now 42 matched connections. |
| [`E07-vpc-flow-raw-three-ips.png`](E07-vpc-flow-raw-three-ips.png) | Raw allowed TCP/80 flows from victim to the three alert IPs. |
| [`E08-vpc-flow-summary-three-ips.png`](E08-vpc-flow-summary-three-ips.png) | Per-IP manual VPC Flow summary with counts and first/last seen. |
| [`E09-benign-lookup-contents.png`](E09-benign-lookup-contents.png) | Configured benign dynamic-domain tuning lookup contents. |
| [`E10-benign-lookup-no-match.png`](E10-benign-lookup-no-match.png) | Scenario domain absent from benign lookup. |
| [`E11-scope-single-client.png`](E11-scope-single-client.png) | Scope limited to one internal client. |
| [`E12-scope-a-noerror.png`](E12-scope-a-noerror.png) | Single-client A-query / NOERROR scope detail. |
| [`E13-baseline-top-domains.png`](E13-baseline-top-domains.png) | Scenario-domain query volume versus other client A-query domains. |
| [`E14-baseline-deviation.png`](E14-baseline-deviation.png) | Supporting baseline deviation view. |
| [`E15-ai-pipeline-events.png`](E15-ai-pipeline-events.png) | AI triage events present with human validation requirement. |
| [`E16-ai-expanded-fields-1.png`](E16-ai-expanded-fields-1.png) | Expanded AI context and evidence-limit fields. |
| [`E17-ai-expanded-fields-2.png`](E17-ai-expanded-fields-2.png) | Expanded AI summary/reasoning fields. |
| [`E18-ai-raw-json.png`](E18-ai-raw-json.png) | Raw AI JSON used for human validation. |
| [`ai-triage-export.csv`](ai-triage-export.csv) | Structured AI triage export. |
| [`alerts/live-fast-flux-alert-36.pdf`](alerts/live-fast-flux-alert-36.pdf) | Preserved first live Fast Flux alert PDF. |
| [`alerts/repeated-fast-flux-alert-42.pdf`](alerts/repeated-fast-flux-alert-42.pdf) | Preserved repeated alert/update PDF. |

## Integrity

See [`EVIDENCE-MANIFEST.csv`](EVIDENCE-MANIFEST.csv) and [`SHA256SUMS.txt`](SHA256SUMS.txt). Hashes were generated for the files as integrated into the final Scenario 03 repository.
<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🔎 SOC Workspace](../README.md) · [📖 Investigation](../SOC-ANALYST-INVESTIGATION.md)

<br/>

**A screenshot supports a claim only as far as the fields it actually shows.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
