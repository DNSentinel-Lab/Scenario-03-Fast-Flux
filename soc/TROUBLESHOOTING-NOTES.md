<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,20,24,26&height=125&section=header&text=%F0%9F%94%8E%20Scenario%2003%20SOC%20Learning%20Journey&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20SOC%20%2F%20Threat%20Hunting&descSize=13&descAlignY=68&descColor=22D3EE" width="100%" alt="Scenario 03 SOC Learning Journey" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-SOC_%2F_Threat_Hunting-22D3EE?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🔎 Scenario 03 SOC Learning Journey

This file documents **real investigation friction shown in the chat**. It does not invent dramatic failures that did not occur.

## 🚨 1. Validate telemetry before chasing alerts
The investigation began with explicit DNS and VPC Flow health checks. This prevented a missing-data situation from being mistaken for clean activity.

**Lesson:** data health is part of investigation quality.

## 🚨 2. An older alert appeared before the live Scenario 03 lead
An alert for `us-east-1.ec2.archive.ubuntu.com` appeared with an 11:40 UTC event time. It was tempting to treat any Fast Flux alert as the scenario case. Instead, the analyst compared timestamps/domains and preserved it as pre-existing context.

**Lesson:** alert name alone does not define case identity; time, entity and domain matter.

## 📌 3. Raw Unbound logs did not expose returned A-record IP values
The resolver clearly showed A queries and NOERROR responses, but the visible `_raw`/field view did not contain the returned IPv4 values. The investigation did not invent a field or claim the raw resolver independently proved the alert's three IPs.

**Resolution:** document the telemetry limitation and pivot to independent VPC Flow validation while keeping the detection's DNS/IP association labeled as alert-supplied.

**Lesson:** logs are evidence, not answers; absence of a field is an attribution limit.

## 🚨 4. The alert triggered again with the same event time but a higher connection count
The first live result showed 36 matched connections; a later trigger for the same 12:50 event bucket showed 42. Rather than labeling this a second attack, the analyst recognized it as a repeated trigger/update of the same detection window.

**Lesson:** repeated alerts can be re-evaluations of the same behavior; case deduplication needs event identity, not just trigger count.

## 🧠 5. Manual VPC count (37) did not equal detection count (42)
Manual review over 12:45–12:55 found 37 flows, while the detection later displayed 42 matched connections.

**Resolution:** preserve both counts and state that different search windows/aggregation logic may explain the difference. Do not manipulate the manual query to force agreement.

**Lesson:** reproducibility includes documenting mismatches.

## 📌 6. Benign lookup returned no match
The scenario domain was absent from `fastflux_benign_domains.csv`.

**Lesson:** “not known benign” is not the same as “malicious.” The lookup result is one piece of context, not a verdict.

## 📊 7. Baseline statistics were outlier-influenced
The scenario domain's 274 events dominated a very small set of comparison domains, making the average and standard deviation themselves heavily influenced by the outlier.

**Resolution:** use the simple ranked counts as the primary baseline proof and keep the deviation table as supporting context.

**Lesson:** a statistic can be mathematically correct yet analytically weak if the sample is small or dominated by the event under investigation.

## 🤖 8. AI fields were nested and initially collapsed
The first `dns_soc_ai` view only proved AI events existed and `human_validation_required=true`. The actual reasoning was hidden inside nested objects.

**Resolution:** use `spath`, `table ai.* alert.*`, and raw JSON views to expose the summary, missing evidence, MITRE mapping, network context and response considerations.

**Lesson:** validate AI output at field level; never accept a hidden/summary-only result as sufficient evidence.

## 🤖 9. AI was useful but not complete
The AI was cautious and correctly preserved attribution limits, but some statements depended on the production alert's DNS/IP correlation rather than independently visible answer-IP data.

**Lesson:** the correct sequence stayed: raw evidence → analyst hypothesis → AI review → AI validation → human disposition.

## 📌 Outcome
The analyst reached **INCONCLUSIVE — ESCALATION WARRANTED**, which is stronger professional work than forcing “malware” from behavior that the available evidence could not attribute.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
