<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=125&section=header&text=%F0%9F%A7%A0%20SOC%20Analyst%20Handoff%20%E2%80%94%20Scenario%2003%20Fast%20Flux%20DNS&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=F97316" width="100%" alt="SOC Analyst Handoff — Scenario 03 Fast Flux DNS" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🔎 SOC Analyst Handoff — Scenario 03 Fast Flux DNS

## 🚨 Alert

**Suspicious Fast Flux DNS Behavior**

## 🧭 MITRE

`T1568.001 — Dynamic Resolution: Fast Flux DNS`

## 📌 Severity

Medium

## 🧠 What the detection proves

Within a 5-minute behavioral bucket, the same domain had at least two DNS-returned public IPs and the victim made at least three connections to IPs that matched those DNS answers. Known benign dynamic services were excluded through the tuning lookup.

## 🧠 What the detection does not prove

It does not by itself prove malware, command-and-control, or malicious ownership. Legitimate dynamic infrastructure exists. The analyst must validate raw DNS answers, connection timing, domain context, scope, and any other endpoint/cloud evidence.

## 📌 Key fields

- `src_ip`
- `query_name`
- `matched_connections`
- `unique_matched_ips`
- `matched_ips`
- `detection_reason`
- AI advisory summary in `index=dns_soc_ai`

## 🔎 Recommended investigation pivots

1. Review the Resolver Query Log events for the alert domain.
2. Confirm answer-IP changes and timestamps.
3. Review VPC Flow events from the source host to each matched answer IP.
4. Compare the domain against the benign dynamic-domain lookup and business context.
5. Check whether other internal clients show the same domain/IP pattern.
6. Treat the AI summary as advisory only.
7. If suspicious behavior is confirmed, hand off to IR/Defender for domain-level containment/sinkhole action.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
