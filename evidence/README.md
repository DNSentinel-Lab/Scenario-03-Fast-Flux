<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=190&section=header&text=%F0%9F%A7%BE%20Scenario%2003%20Evidence%20Center&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Fast%20Flux%20DNS%20%C2%B7%20Engineering%20%E2%86%92%20Operator%20%E2%86%92%20SOC%20%E2%86%92%20IR%20%E2%86%92%20Final%20Comparison&descSize=15&descAlignY=61&descColor=F59E0B" width="100%" alt="🧾 Scenario 03 Evidence Center" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=F59E0B&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Build%20Evidence%20%E2%86%92%20Private%20Ground%20Truth%20%E2%86%92%20Defender%20Investigation%20%E2%86%92%20IR%20Validation;Claims%20never%20become%20stronger%20than%20the%20artifacts%20that%20support%20them" alt="🧾 Scenario 03 Evidence Center workflow" />

![Status](https://img.shields.io/badge/Evidence_Center-Complete-2EA44F?style=flat-square) ![Integrity](https://img.shields.io/badge/Manifest_%26_Hashes-Preserved-F59E0B?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎯 Operator](../attacker/evidence/README.md) · [🔎 SOC](../soc/evidence/README.md) · [🛡️ IR](../ir/evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧾 Scenario 03 — Evidence Center

This workspace connects the evidence preserved by each role **without flattening the case into one screenshot dump**.

## 🔁 Evidence Architecture

```mermaid
flowchart LR
    A["🏗️ Infrastructure +<br/>Detection Engineering"] --> B["🎯 Operator<br/>Ground Truth"]
    A --> C["🔎 SOC<br/>Defender Evidence"]
    C --> D["🛡️ IR<br/>Independent Validation"]
    B --> E["🎭 Final Comparison"]
    D --> E
```

## 🖼️ Cross-Role Highlights

<table>
<tr>
<td width="25%"><img src="../screenshots/detection-engineering/06-final-detection.png" alt="Detection v1.0"><br/><sub><b>Engineering:</b> frozen correlated Fast Flux detection.</sub></td>
<td width="25%"><img src="../attacker/evidence/07-first-complete-rotation-cycle.png" alt="Operator rotation"><br/><sub><b>Operator:</b> complete controlled rotation.</sub></td>
<td width="25%"><img src="../soc/evidence/E08-vpc-flow-summary-three-ips.png" alt="SOC flow validation"><br/><sub><b>SOC:</b> defender network validation.</sub></td>
<td width="25%"><img src="../ir/evidence/E20-final-victim-dns-verification.png" alt="IR safe state"><br/><sub><b>IR:</b> final authorized-client DNS verification.</sub></td>
</tr>
</table>

## 🏗️ Infrastructure / Detection Engineering

- [`../screenshots/infrastructure/`](../screenshots/infrastructure/) — endpoint pool, Route 53, rotation, authoritative validation, victim follow-up and VPC Flow proof
- [`../screenshots/detection-engineering/`](../screenshots/detection-engineering/) — field validation, baseline, answer extraction, tuning, final detection, alert, AI and dashboard
- [`ENGINEERING-EVIDENCE-MANIFEST.md`](ENGINEERING-EVIDENCE-MANIFEST.md) / [`ENGINEERING-EVIDENCE-MANIFEST.csv`](ENGINEERING-EVIDENCE-MANIFEST.csv) — engineering integrity index
- [`engineering-validation/`](engineering-validation/) — preserved validated engineering/test scripts

## 🎯 Operator Ground Truth

- [`../attacker/evidence/README.md`](../attacker/evidence/README.md) — reveal-ready operator evidence
- [`../attacker/GROUND-TRUTH.md`](../attacker/GROUND-TRUTH.md) — official operator timeline

## 🔎 SOC Investigation

- [`../soc/evidence/README.md`](../soc/evidence/README.md) — E01–E18 defender investigation set
- [`../soc/SOC-ANALYST-INVESTIGATION.md`](../soc/SOC-ANALYST-INVESTIGATION.md) — full analyst story

## 🛡️ IR Independent Validation

- [`../ir/evidence/README.md`](../ir/evidence/README.md) — defender-response evidence
- [`../ir/INCIDENT-RESPONSE.md`](../ir/INCIDENT-RESPONSE.md) — full IR story

## 🎭 Final Comparison

- [`../exercise/final-comparison.md`](../exercise/final-comparison.md) — operator ground truth vs Detection v1.0 vs AI vs SOC vs IR
- [`CLAIM-TO-EVIDENCE-MAP.md`](CLAIM-TO-EVIDENCE-MAP.md) — claim-strength boundary
- [`FINAL-CLOSEOUT-MANIFEST.md`](FINAL-CLOSEOUT-MANIFEST.md) / [`FINAL-CLOSEOUT-MANIFEST.csv`](FINAL-CLOSEOUT-MANIFEST.csv) — final closeout integrity index

> **Evidence rule:** a public statement should be no stronger than the artifact that supports it.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Final Comparison](../exercise/final-comparison.md) · [🖼️ Screenshot Portal](../screenshots/README.md)

<br/>

**Preserve the source. Explain the claim. Keep the boundary visible.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
