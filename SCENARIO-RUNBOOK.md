<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=150&section=header&text=%F0%9F%94%84%20Scenario%2003%20Runbook%20%E2%80%94%20Fast%20Flux%20DNS&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Scenario%2003&descSize=13&descAlignY=68&descColor=F59E0B" width="100%" alt="Scenario 03 Runbook — Fast Flux DNS" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Scenario_03-F59E0B?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](README.md) · [🧾 Evidence](evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 📘 Scenario 03 Runbook — Fast Flux DNS

**Scenario status:** ✅ COMPLETE  
**MITRE:** `T1568.001 — Dynamic Resolution: Fast Flux DNS`  
**Cyber Kill Chain:** Command & Control

## 🎯 1. Objective — ✅ Complete

Demonstrate and investigate controlled Fast Flux-like behavior by combining changing DNS A answers, real victim follow-up destinations, benign dynamic-service context, independent SOC reasoning and a proportionate IR decision.

## 🏗️ 2. Architecture — ✅ Implemented / exercised

- victim: `dns-soc-victim01` / `10.50.30.20`;
- defender resolver: `dns-soc-resolver01` / `10.50.30.10`;
- controlled flux nodes: `10.60.10.21–23` with temporary exercise-time public IPv4 addresses;
- `flux.soclab.abdul4rehman215.tech` with configured 60-second TTL during the controlled run;
- Route 53 UPSERT rotation from `dns-attack01`;
- Splunk Resolver Query Log, Unbound, VPC Flow and AI evidence paths.

The three temporary flux EC2 nodes were retired after the exercise.

## 👥 3. Roles — ✅ Complete

| Role | Owner | Final responsibility |
|---|---|---|
| Project Lead / Operator | Lubaba | official controller + victim follow-up ground truth |
| SOC Analyst / Threat Hunter | Abdul-Rehman | defender-only investigation + disposition + IR handoff |
| Detection Engineer | Musfira | telemetry, baseline, tuned detection, alert, AI contract, dashboard |
| IR / Defender | Sonia | independent validation, host/context review, response decision, safe-state proof |

## 📌 4. Infrastructure / pre-flight — ✅ Complete

Controller identity, syntax/material settings, authoritative baseline, three-node health, Route 53 rotation, victim follow-up, HTTP `200` and VPC Flow visibility were validated.

## 📊 5. Baseline — ✅ Complete

Normal dynamic cloud services were measured before final thresholds were frozen. Legitimate AWS/Ubuntu/Splunk answer churn was observed and used for tuning.

## 🔎 6. Hunting — ✅ Complete

Resolver answer churn, public destination churn and DNS-answer/network matching were tested. Weak discriminators were rejected rather than forced into Detection v1.0.

## 🧠 7. Detection — ✅ Complete

Canonical Detection v1.0: [`spl/detection.spl`](spl/detection.spl)

```text
5-minute window
A + NOERROR
public answers only
unique_matched_ips >= 2
matched_connections >= 3
known benign dynamic domains excluded
```

## 🚨 8. Alert — ✅ Complete

The scheduled production alert `Suspicious Fast Flux DNS Behavior` fired during the official execution. A repeated trigger/update for the same 12:50 bucket later increased the matched-connection count.

## 🤖 9. AI assistance — ✅ Complete / validated

The shared bridge returned Scenario 03 triage evidence to `dns_soc_ai`. SOC graded the AI **Partially Correct** and retained it as advisory only.

## 📌 10. Dashboard — ✅ Complete

Final JSON: [`dashboard/scenario-03-fast-flux-detection.dashboard.json`](dashboard/scenario-03-fast-flux-detection.dashboard.json)

## 📌 11. Official simulation — ✅ Complete

Lubaba ran the frozen controller and victim follow-up path without inspecting Splunk or changing timing to force a detection.

Official controller window:

```text
2026-08-28T12:43:43Z → 2026-08-28T12:58:30Z
```

## 🔎 12. SOC analysis — ✅ Complete

Abdul-Rehman independently validated DNS/network behavior, benign lookup, one-client scope, baseline deviation and AI limitations.

Final SOC disposition:

> **INCONCLUSIVE — ESCALATION WARRANTED**

## 🛡️ 13. IR / response — ✅ Complete

Sonia independently recovered the three historical A answers, validated transition chronology and network follow-up, investigated endpoint context and current activity, and concluded:

> **CONTROLLED / EXPECTED SCENARIO ACTIVITY — NO CONTAINMENT REQUIRED**

The prepared RPZ/sinkhole mechanism was not activated because an enforcing change was not proportionate.

## 📌 14. Verification — ✅ Complete

IR verified:

- current Scenario 03 activity inactive;
- no active matching process;
- no Scenario 03 RPZ rule;
- valid/active Unbound;
- unrelated DNS working;
- scenario domain resolving normally through the victim's configured resolver path.

## 🧾 15. Cleanup / reset — ✅ Complete with evidence note

- victim follow-up loop stopped;
- controller stopped and process absence confirmed;
- no Scenario 03 RPZ action required reset;
- resolver/RPZ safe state independently verified;
- three temporary flux EC2 nodes were stopped/deleted/reset after the exercise.

The exact temporary-node teardown timestamp was not preserved in the attached evidence package and is not fabricated here.

## 🏁 16. Final comparison — ✅ Complete

[`exercise/final-comparison.md`](exercise/final-comparison.md) compares operator ground truth with Detection v1.0, AI, SOC and IR without retroactively changing what each role could know at decision time.

## 🧭 17. MITRE — ✅ Locked

`T1568.001 — Dynamic Resolution: Fast Flux DNS`

The mapping describes observed dynamic-resolution behavior; it is not proof of malware or malicious ownership.

## 📌 18. False positives — ✅ Complete

Legitimate dynamic AWS/Ubuntu/Splunk services were observed. The final rule uses answer-to-destination correlation plus a benign-domain lookup rather than `multiple A answers = malicious`.

## 💡 19. Lessons — ✅ Complete

Detection Engineering, operator, SOC and IR lessons are documented in their role workspaces. Only material technical reasoning/troubleshooting was retained.

## 🧾 20. Screenshots / evidence — ✅ Curated

- Infrastructure / Detection Engineering: [`screenshots/`](screenshots/)
- Operator: [`attacker/evidence/`](attacker/evidence/)
- SOC: [`soc/evidence/`](soc/evidence/)
- IR: [`ir/evidence/`](ir/evidence/)
- Cross-role Evidence Center: [`evidence/README.md`](evidence/README.md)

**Scenario 03 closeout:** ✅ COMPLETE

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
