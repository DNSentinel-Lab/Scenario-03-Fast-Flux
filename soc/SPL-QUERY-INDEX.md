# Scenario 03 — SOC Investigation SPL Index

`split/` is not used here; all executed investigation searches are stored in [`spl/`](spl/). The production detection itself remained frozen during the SOC investigation.

| # | Search | Purpose |
|---:|---|---|
| 01 | [`01-monitoring-readiness-dns.spl`](spl/01-monitoring-readiness-dns.spl) | prove live Unbound telemetry |
| 02 | [`02-monitoring-readiness-vpc.spl`](spl/02-monitoring-readiness-vpc.spl) | prove live VPC Flow telemetry |
| 03 | [`03-preexisting-alert-raw-dns.spl`](spl/03-preexisting-alert-raw-dns.spl) | inspect older unrelated alert context |
| 04 | [`04-live-domain-raw-dns.spl`](spl/04-live-domain-raw-dns.spl) | raw scenario-domain DNS evidence |
| 05 | [`05-live-domain-expanded-fields.spl`](spl/05-live-domain-expanded-fields.spl) | inspect extracted DNS fields / answer-IP limitation |
| 06 | [`06-vpc-flow-raw-three-ips.spl`](spl/06-vpc-flow-raw-three-ips.spl) | raw victim-to-three-IP flows |
| 07 | [`07-vpc-flow-summary-three-ips.spl`](spl/07-vpc-flow-summary-three-ips.spl) | per-IP count/time/port/action summary |
| 08 | [`08-benign-lookup-contents.spl`](spl/08-benign-lookup-contents.spl) | inspect tuned benign dynamic services |
| 09 | [`09-benign-lookup-no-match.spl`](spl/09-benign-lookup-no-match.spl) | prove scenario domain absent from lookup |
| 10 | [`10-scope-single-client.spl`](spl/10-scope-single-client.spl) | scope unique internal clients |
| 11 | [`11-scope-query-type-response.spl`](spl/11-scope-query-type-response.spl) | confirm A / NOERROR scope detail |
| 12 | [`12-baseline-top-a-domains.spl`](spl/12-baseline-top-a-domains.spl) | ranked client A-query baseline |
| 13 | [`13-baseline-deviation.spl`](spl/13-baseline-deviation.spl) | supporting deviation calculation |
| 14 | [`14-ai-search.spl`](spl/14-ai-search.spl) | retrieve Scenario 03 AI events |
| 15 | [`15-ai-expanded-fields.spl`](spl/15-ai-expanded-fields.spl) | expose nested AI/alert fields |
| 16 | [`16-ai-raw.spl`](spl/16-ai-raw.spl) | raw AI JSON review |

[`ALL-SOC-INVESTIGATION-QUERIES.spl`](spl/ALL-SOC-INVESTIGATION-QUERIES.spl) preserves the complete executed SOC query set in one file.
