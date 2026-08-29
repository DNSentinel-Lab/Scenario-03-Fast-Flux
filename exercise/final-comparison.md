<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,19,24,30&height=150&section=header&text=%F0%9F%8E%AD%20Final%20Comparison%20%E2%80%94%20One%20Fast%20Flux%20Event%2C%20Four%20Evidence%20Views&fontSize=30&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Exercise%20Control&descSize=13&descAlignY=68&descColor=A78BFA" width="100%" alt="Final Comparison — One Fast Flux Event, Four Evidence Views" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Exercise_Control-A78BFA?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧾 Final Comparison — One Fast Flux Event, Four Evidence Views

This comparison was created only after the SOC and IR decisions were locked. It does not retroactively give a role information that the role did not have when making its decision.

## 🎭 One event, different evidence boundaries

| Perspective | What it knew / observed | Final interpretation |
|---|---|---|
| **Lubaba — Project Lead / Operator** | exact controller, configured TTL, node/IP map, UPSERT sequence, victim follow-up, private start/end | authorized controlled Fast Flux execution completed |
| **Detection v1.0** | Resolver answer IPs matched to public destinations contacted by `10.50.30.20` in a 5-minute bucket, after benign tuning | Medium-severity Fast Flux behavioral lead generated |
| **AI** | structured alert evidence and detection metadata | useful conservative summary, later graded **Partially Correct** |
| **Abdul-Rehman — SOC** | alert + Unbound + VPC Flow + baseline + benign lookup + AI; no operator ground truth / no process context | **INCONCLUSIVE — ESCALATION WARRANTED** |
| **Sonia — IR** | SOC handoff + Resolver Query Logs + VPC Flow + current state + host evidence + CloudTrail/SSM + RPZ/Unbound state | **CONTROLLED / EXPECTED — NO CONTAINMENT REQUIRED** |
| **Final reveal** | private operator ground truth compared after defender closure | defender evidence aligned with the authorized official run without contaminating earlier decisions |

## 🕒 Timeline alignment

```text
12:43:43  Lubaba starts official controller
12:43:46  operator captures node01 → 13.220.94.188
12:45:47  operator captures node02 → 52.73.218.100
12:47:48  operator captures node03 → 54.81.98.44
12:50:00  production Fast Flux alert event bucket
12:52:18  victim follow-up loop begins
12:58:04  victim follow-up stops
12:58:30  controller stops
```

IR's source-native Resolver evidence independently showed answer transitions around the same operational period without using the hidden operator timeline.

## 🔄 What Detection v1.0 got right

The final rule was built to avoid the weak statement:

```text
multiple A records = Fast Flux
```

It instead required DNS answers that matched destinations actually contacted by the victim, a short window, minimum connection/unique-IP counts and a benign dynamic-domain exclusion.

That design was validated by the official run: the live alert surfaced the scenario domain and the same three controlled public destinations.

## 🔎 Why the SOC stayed inconclusive

The SOC independently proved:

- repeated successful A-query activity;
- one internal client;
- strong query-volume deviation;
- allowed TCP/80 connections to all three alert IPs;
- no configured benign-lookup match;
- AI uncertainty.

But the SOC did **not** yet have:

- independently visible answer IPs from its displayed Unbound fields;
- initiating process;
- responsible user;
- authorization/business context;
- malicious ownership evidence.

So Abdul-Rehman's escalation was not hesitation. It was the correct boundary:

> **The behavior was real and abnormal; the malicious explanation was not yet proven.**

## 🛡️ Why IR could refine the conclusion

IR found evidence the SOC did not have at its stage:

- Resolver Query Logs independently exposed all three A answers;
- AWS `query_timestamp` rebuilt answer chronology;
- current DNS/network activity had stopped;
- local shell history contained the Scenario 03 `dig`/`curl` follow-up workflow;
- CloudTrail and journal added interactive-session context;
- no active matching process remained;
- RPZ contained no Scenario 03 rule;
- Unbound and unrelated DNS were healthy.

Sonia therefore had a defensible basis to refine the case to controlled/expected activity.

## 🛡️ Why “no containment” was the correct response

The prepared response capability was real:

```text
flux.soclab.abdul4rehman215.tech
→ Unbound RPZ
→ 10.50.30.30 sinkhole
```

But by IR decision time:

- activity was inactive;
- the host evidence strongly supported controlled test context;
- no malware/compromise/malicious ownership was established;
- no Scenario 03 process was still active;
- an enforcing change would add configuration risk without reducing a current threat.

The strongest IR action was therefore **not** to change resolver policy.

## 🧾 ⏱️ TTL comparison — preserve the evidence distinction

| Perspective | TTL fact |
|---|---|
| Operator ground truth | controller was configured for TTL `60` |
| Detection Engineering | infrastructure validation observed the 60-second design |
| SOC | historical TTL was not independently available from displayed Unbound evidence |
| IR | preserved historical Resolver events did not expose TTL; later live victim query observed TTL `60` |

The final reveal can show that the configured TTL was 60 without rewriting the defender's historical evidence limitations.

## 📊 Count comparison — no forced equality

| View | Count | Meaning |
|---|---:|---|
| SOC manual VPC review | 37 | narrow 12:45–12:55 manual window |
| production alert update | 42 | detection-side matched connections for the 12:50 bucket |
| IR VPC review | wider-window total | independently validated over a broader IR scope |

These numbers are not contradictions. They came from different windows/aggregation paths and were kept transparent.

## 🧹 Final cleanup

The live controller and victim loop were stopped during the official execution. The three temporary Fast Flux EC2 nodes were stopped/deleted/reset after the exercise.

No Scenario 03 RPZ enforcement had been activated, so there was no Scenario 03 containment rollback to perform. IR instead verified that the resolver/RPZ path was already in a safe normal state.

The exact temporary-node teardown timestamp was not included in the preserved operator/IR evidence and is therefore not invented in the final comparison.

## 🏁 ✅ Final scenario outcome

> **The exercise succeeded because each role reached the strongest conclusion its own evidence supported.** Lubaba generated controlled Fast Flux behavior without steering toward Splunk. Musfira's frozen detection surfaced the behavior. Abdul-Rehman confirmed a serious Fast Flux-like anomaly without inventing malware attribution. Sonia independently strengthened the case, found controlled endpoint context, measured current risk, and correctly declined unnecessary containment. The final reveal then showed that the defender conclusions aligned with the authorized operator ground truth.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🎭 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
