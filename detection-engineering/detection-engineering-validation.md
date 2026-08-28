# Detection Engineering Validation Record

| Test | Expected | Observed | Result |
|---|---|---|---|
| Unbound field validation | client/domain/query-reply visible | validated | ✅ PASS |
| VPC Flow field validation | source/destination/port/action fields | validated | ✅ PASS |
| Fresh Fast Flux network behavior | 2–3 public destinations in short windows | observed | ✅ PASS |
| Resolver answer extraction | returned A-record IPs available | `answers{}.Rdata` extracted | ✅ PASS |
| Generic churn false-positive test | legitimate dynamic domains also appear | multiple AWS/Ubuntu/Splunk services observed | ✅ PASS |
| DNS-answer ↔ network join | victim contacted DNS-returned addresses | validated for three controlled nodes | ✅ PASS |
| Benign lookup | known services excluded | lookup validated | ✅ PASS |
| Detection v1.0 | Fast Flux candidate remains after tuning | detection produced results | ✅ PASS |
| Scheduled alert | production search triggers | appeared in Triggered Alerts | ✅ PASS |
| AI webhook contract | bridge accepts structured evidence | HTTP 200 after schema correction | ✅ PASS |
| AI write-back | triage returns to Splunk | `index=dns_soc_ai` | ✅ PASS |
| Dashboard | all five panels load | Overview + Context validated | ✅ PASS |

## Boundary

These are **engineering validation** results. They are not the official information-separated Scenario 03 execution, SOC verdict, IR decision or containment verification.
