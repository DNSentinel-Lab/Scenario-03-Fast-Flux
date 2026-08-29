<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=125&section=header&text=%F0%9F%A7%A0%20Detection%20Engineering%20Closeout%20%E2%80%94%20Scenario%2003&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=F97316" width="100%" alt="Detection Engineering Closeout — Scenario 03" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧠 Detection Engineering Closeout — Scenario 03

## 🚦 Status

**Complete, frozen, and exercised in the official Scenario 03 run.**

## 📌 Completed technical work

- Unbound DNS field validation.
- VPC Flow field validation.
- Network and DNS baselining.
- Resolver Query Log discovery in `aws:s3`.
- Direct extraction of returned DNS answer IPs.
- Generic DNS churn hunting.
- False-positive analysis against legitimate AWS/Ubuntu/Splunk dynamic services.
- DNS-answer-to-network-destination matching.
- RFC1918 exclusion.
- Lookup-based benign-domain tuning.
- Final behavioral detection thresholds.
- MITRE `T1568.001` mapping.
- Medium severity rationale.
- Saved scheduled alert every five minutes.
- Triggered-alert validation during controlled engineering rotation.
- AI webhook contract integration.
- Successful AI summary write-back to `index=dns_soc_ai`.
- Dashboard with Detection Overview and Detection Context tabs.
- Official-run production alert generated while Detection v1.0 remained frozen.
- Defender handoff consumed by Abdul-Rehman during the completed SOC investigation.

## 🏁 Final behavioral statement

The detection does not fire because the lab domain is named `flux.soclab...`. It identifies domains whose DNS A-record answers change and whose returned public IPs are subsequently contacted by the victim in the same 5-minute bucket, then removes known benign dynamic services using a lookup.

## 📌 Official exercise proof

The live Scenario 03 alert surfaced the controlled scenario domain and the same three public destinations later validated through SOC/IR evidence. The SOC did not modify the rule during investigation.

## 📌 Known limitation

The final lab implementation still uses victim IP `10.50.30.20` in the VPC Flow subsearch. A future enterprise-generalized version should derive/normalize client identity rather than pinning the rule to one lab victim.

## 📨 Handoff outcome

Detection Engineering handed a production lead to SOC. SOC escalated the unresolved attribution questions to IR. IR independently strengthened DNS and host context and ultimately classified the activity as controlled/expected with no containment required.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
