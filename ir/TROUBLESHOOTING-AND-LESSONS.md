<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=24,20,14,6,1&height=125&section=header&text=%F0%9F%9B%A1%EF%B8%8F%20Scenario%2003%20IR%20%E2%80%94%20Troubleshooting%20and%20Lessons%20Learned&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Incident%20Response&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 03 IR — Troubleshooting and Lessons Learned" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Incident_Response-14B8A6?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧩 Scenario 03 IR — Troubleshooting and Lessons Learned

Only investigation issues that materially changed the evidence path or reasoning are documented here. Minor navigation/copy-paste mistakes are intentionally excluded.

## 🔎 1. Resolver Query Logs were not in an obvious sourcetype
**Problem:** `index=dns_soc_aws` exposed only generic sourcetypes such as `aws:s3` and `aws:kinesis`; there was no obvious `resolver` sourcetype.  
**Impact:** IR could not safely assume where historical DNS answers lived.  
**Resolution:** inventory sourcetypes, search the exact domain across sources, then identify S3 paths containing `vpcdnsquerylogs`. From there, inspect raw JSON and extract `answers{}.Rdata`.  
**Lesson:** validate the real onboarded source/sourcetype before writing investigative SPL.

## 📌 2. Splunk `_time` was not precise enough for Resolver chronology
**Problem:** events returned by an `_time` window contained AWS `query_timestamp` values that were earlier than the displayed Splunk event time.  
**Impact:** using `_time` alone could produce an inaccurate DNS-answer sequence.  
**Resolution:** parse and sort on AWS `query_timestamp` for the exact transition timeline.  
**Lesson:** for cloud telemetry, distinguish event timestamp from ingestion/index timestamp and use the source-native timestamp when building a forensic timeline.

## 🤖 3. Historical TTL was unavailable
**Problem:** Resolver Query Log events exposed answers but no historical TTL field in the preserved data.  
**Impact:** IR could not independently prove incident-time short TTL from that data source.  
**Resolution:** document the limitation rather than infer a value. A later live victim query observed TTL 60, but the report explicitly keeps historical and live TTL evidence separate.  
**Lesson:** absence of a field is an evidence limitation, not permission to copy a detection assumption.

## 📌 4. Splunk had no endpoint/process telemetry for the victim
**Problem:** hostname/IP searches returned no endpoint-identifiable events for `dns-soc-victim01`.  
**Impact:** process/user attribution could not be completed from SIEM data alone.  
**Resolution:** pivot to defender-accessible endpoint evidence through SSM: journal, shell history, process state, cron and CloudTrail.  
**Lesson:** IR should pivot evidence sources rather than invent endpoint visibility.

## 📌 5. Endpoint history and SSM timing did not fully align
**Problem:** shell history strongly showed Scenario 03 `dig`/`curl` test commands, but the only confirmed interactive SSM session began at 12:51:53 UTC, after the earliest observed DNS/network activity. Bash history also lacked timestamps.  
**Impact:** it would have been incorrect to attribute every event to that SSM session/user.  
**Resolution:** classify the behavior as strongly consistent with controlled test activity while preserving the earlier attribution gap.  
**Lesson:** evidence convergence can support context without erasing timeline uncertainty.

## 🔎 6. Resolver self-query returned `REFUSED`
**Problem:** querying `10.50.30.10` from the resolver host itself returned `REFUSED` / recursion unavailable.  
**Impact:** this initially looked like a resolver-health problem.  
**Resolution:** do not change ACLs. Validate from the actual authorized client (`dns-soc-victim01`). The victim successfully resolved both `example.com` and the Scenario 03 domain.  
**Lesson:** test from the correct network trust path before modifying policy.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🛡️ Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
