<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=125&section=header&text=%F0%9F%A7%A0%20Troubleshooting%20%26%20Learning%20Journey&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=F97316" width="100%" alt="Troubleshooting & Learning Journey" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-F97316?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🧩 Troubleshooting & Learning Journey

Scenario 03 was not a straight-line build. The Detection Engineering work repeatedly produced results that looked wrong, incomplete, or confusing. Each problem was treated as evidence about the data rather than as a reason to force the detection to match expectations.

## 🔎 1. The first 60-minute Fast Flux hunt returned zero results

**Symptom:** A 5-minute/2-destination VPC Flow hunt returned no rows.

**Cause:** The earlier victim HTTP activity had aged out of the last-hour search window.

**How it was solved:** A 24-hour validation search proved 280 port-80 connections and showed the three controlled Fast Flux nodes in historical flow data. Fresh victim + rotation loops were restarted for live validation.

**Lesson:** A zero-result search does not automatically mean the SPL is wrong. Validate event freshness and ground truth first.

## 🔎 2. A private internal IP polluted the multi-destination hunt

**Symptom:** The first live 5-minute result showed one Fast Flux public IP plus `10.50.10.128`, still satisfying `>=2` destinations.

**Cause:** The VPC Flow search counted unrelated private HTTP activity from the same client.

**Fix:** Exclude RFC1918 ranges with `cidrmatch()` before counting destinations.

**Lesson:** Thresholds need scope. “Two destinations” is meaningless if unrelated internal traffic is allowed into the population.

## 🌐 3. DNS + network correlation was too broad

**Symptom:** The prototype correlation showed the Fast Flux domain together with GuardDuty, SSM and other normal domains in the same 5-minute bucket.

**Cause:** Unbound logs proved DNS activity but did not expose the answer IP in the raw lines being used, so the search only showed “DNS happened near network activity.”

**Fix:** Stop claiming domain-to-IP causality from Unbound alone and look for richer Resolver telemetry.

**Lesson:** Correlation by time is not the same as correlation by entity.

## 🔎 4. Resolver Query Logs looked missing, but were already present

**Symptom:** AWS sourcetype inventory did not show a dedicated Route 53 Resolver sourcetype.

**Discovery:** Route 53 Resolver Query Logging was already configured to S3. Searching `sourcetype=aws:s3` for the lab domain revealed JSON events containing `query_name`, `query_type`, `rcode`, and `answers[].Rdata`.

**Fix:** Use `spath` and `answers{}.Rdata` rather than creating duplicate logging infrastructure.

**Lesson:** A generic sourcetype can still contain the exact telemetry needed. Inspect raw events before onboarding another copy of the same data.

## 📌 5. DNS answer churn alone produced many false positives

**Symptom:** A generic `dc(answer_ip)>=2` hunt flagged `esm.ubuntu.com`, GuardDuty, SSM, S3, Route 53, `quickdraw.splunk.com`, and other benign services.

**Conclusion:** Changing DNS answers are normal for cloud services and CDNs.

**Fix:** Correlate DNS-returned IPs with victim connections to those same IPs, then tune known benign dynamic domains through a lookup.

**Lesson:** Fast Flux detection must be behavioral and contextual, not “multiple A records = malicious.”

## 🤖 6. The “one IP per response” hypothesis failed

**Hypothesis:** The lab Fast Flux domain might return one IP per DNS response while SSM returns several at once.

**Test result:** After deduplicating each event with `mvdedup()`, both the lab domain and SSM commonly showed one unique answer per logged response.

**Decision:** Discard the feature.

**Lesson:** A detection engineer should be willing to delete an attractive hypothesis when the data disproves it.

## 🤖 7. Churn rate also failed as a discriminator

**Observation:** The controlled Fast Flux domain showed roughly 1–3 unique IPs in 5-minute windows, while legitimate SSM sometimes showed 6–10.

**Decision:** Do not treat “more churn” as “more suspicious.”

**Lesson:** Benign cloud infrastructure can be more dynamic than a small controlled Fast Flux lab.

## 📌 8. Lookup CSV formatting repeatedly caused confusion

**Problems encountered:**

- data initially remained in one spreadsheet column;
- one row still contained a comma inside column A;
- filename accidentally became `fastflux_benign_domains.csv.csv`.

**Fix:** Generate a clean CSV directly and validate it with `| inputlookup fastflux_benign_domains.csv`.

**Lesson:** Small data-quality mistakes in a lookup can silently weaken tuning logic. Validate knowledge objects just like telemetry.

## 🚨 9. Saved-alert scheduling was initially wrong

**Symptom:** The cron expression shown in the UI was `0 6 * * 1`.

**Meaning:** Monday at 06:00, not every five minutes.

**Fix:** Change to `*/5 * * * *`.

**Additional issue:** Splunk required at least one trigger action before saving.

**Fix:** Add **Add to Triggered Alerts** first, then add the webhook later.

**Lesson:** Detection SPL can be perfect while operational scheduling still makes the rule ineffective.

## 🤖 10. AI events appeared to be missing because the wrong index was searched

**Symptom:** `index=ai_triage` returned zero events.

**Discovery:** Inspecting the bridge code showed it writes to:

```text
index=dns_soc_ai
sourcetype=dns_soc:ai:triage
```

**Fix:** Search the correct index.

**Lesson:** Verify the producer configuration instead of assuming an index name from an earlier design note.

## 📌 11. Webhook connectivity worked, but the endpoint still returned HTTP 400

**Connectivity test:** A GET from the Splunk container returned `405 Method Not Allowed` with POST allowed. This proved the container could reach the Flask route.

**Splunk internal logs:** `sendmodalert` showed the native webhook POST was actually reaching the endpoint but receiving `HTTP 400 BAD REQUEST`.

**Cause:** The Fast Flux alert result did not satisfy the bridge schema/normalizer contract.

**Fix:** Inspect `/app/app.py` and add the required structured fields: `alert_id`, `alert_name`, `scenario`, `severity`, `event_time`, `source`, and `evidence_json`.

**Lesson:** Network reachability and application-contract correctness are separate layers.

## 📌 12. A manual POST became the decisive isolation test

A Splunk-style JSON envelope was POSTed manually to `/splunk-webhook`.

**Result:** HTTP 200, successful OpenAI processing, and a new `scenario-03-fastflux-test` event in `index=dns_soc_ai`.

This proved the full AI/HEC pipeline worked and narrowed the remaining fault to the scheduled alert payload.

**Lesson:** When several components are involved, test one boundary at a time.

## 🤖 13. Dispatch-folder inspection did not work in this container

Attempts to find the scheduled search `results.csv.gz` through the expected Splunk dispatch path returned nothing.

**Response:** Do not keep repeating a dead debugging path. Pivot to `index=_internal component=sendmodalert action=webhook`, where payload sizes and HTTP failures were observable.

**Lesson:** Troubleshooting is not about insisting on one method; use the telemetry your environment actually exposes.

## 🚨 14. Payload size proved the scheduled alert had moved to the new contract

Old failing webhook payloads were around **787 bytes**. After the corrected alert fields were saved, new webhook POSTs were around **1331–1362 bytes**.

Soon after, scheduled `scenario-03-fastflux-...` AI events appeared in `dns_soc_ai`.

**Lesson:** Even when full payload capture is unavailable, secondary telemetry can show that a configuration change took effect.

## 📌 15. Dashboard “expected 3” did not match the data

**Symptom:** A 24-hour single-value panel showed 4 unique Fast Flux answer IPs rather than the expected three lab nodes.

**Investigation:** Historical data contained `34.227.61.247` only twice, alongside the three active lab nodes.

**Fix:** Keep the 24-hour historical table truthful and change the “active” single-value panel to a 30-minute window. When rotation was inactive, it correctly displayed 1.

**Lesson:** Do not manipulate dashboards to match the expected story. Explain the data that actually exists.

---

## 💡 Overall learning

The strongest outcome was not that every query worked immediately. It was that each confusing result was investigated until its cause was understood. The final rule became stronger because several tempting shortcuts were tested and rejected: broad time correlation, raw churn thresholds, answer-count assumptions, and churn-rate assumptions. The finished detection is evidence-driven because the troubleshooting itself shaped the design.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
