# SOC Evidence — Abdul-Rehman

This directory contains the curated evidence used by the role narrative. The original preservation packages remain the source archives; this integrated repository keeps only the final public/reveal-ready evidence needed for closeout.

| File | What it proves |
|---|---|
| [`E01-dns-telemetry-readiness.png`](E01-dns-telemetry-readiness.png) | Unbound DNS telemetry health before live investigation. |
| [`E02-vpc-flow-telemetry-readiness.png`](E02-vpc-flow-telemetry-readiness.png) | VPC Flow telemetry health before live investigation. |
| [`E03-live-fast-flux-alert-36.png`](E03-live-fast-flux-alert-36.png) | First live Scenario 03 alert lead with 36 matched connections. |
| [`E04-raw-dns-flux-domain.png`](E04-raw-dns-flux-domain.png) | Raw Unbound activity for the Scenario 03 domain. |
| [`E05-dns-expanded-fields.png`](E05-dns-expanded-fields.png) | Expanded DNS fields and answer-IP visibility limitation. |
| [`E06-repeated-alert-42.png`](E06-repeated-alert-42.png) | Repeated trigger/update for the same 12:50 bucket, now 42 matched connections. |
| [`E07-vpc-flow-raw-three-ips.png`](E07-vpc-flow-raw-three-ips.png) | Raw allowed TCP/80 flows from victim to the three alert IPs. |
| [`E08-vpc-flow-summary-three-ips.png`](E08-vpc-flow-summary-three-ips.png) | Per-IP manual VPC Flow summary with counts and first/last seen. |
| [`E09-benign-lookup-contents.png`](E09-benign-lookup-contents.png) | Configured benign dynamic-domain tuning lookup contents. |
| [`E10-benign-lookup-no-match.png`](E10-benign-lookup-no-match.png) | Scenario domain absent from benign lookup. |
| [`E11-scope-single-client.png`](E11-scope-single-client.png) | Scope limited to one internal client. |
| [`E12-scope-a-noerror.png`](E12-scope-a-noerror.png) | Single-client A-query / NOERROR scope detail. |
| [`E13-baseline-top-domains.png`](E13-baseline-top-domains.png) | Scenario-domain query volume versus other client A-query domains. |
| [`E14-baseline-deviation.png`](E14-baseline-deviation.png) | Supporting baseline deviation view. |
| [`E15-ai-pipeline-events.png`](E15-ai-pipeline-events.png) | AI triage events present with human validation requirement. |
| [`E16-ai-expanded-fields-1.png`](E16-ai-expanded-fields-1.png) | Expanded AI context and evidence-limit fields. |
| [`E17-ai-expanded-fields-2.png`](E17-ai-expanded-fields-2.png) | Expanded AI summary/reasoning fields. |
| [`E18-ai-raw-json.png`](E18-ai-raw-json.png) | Raw AI JSON used for human validation. |
| [`ai-triage-export.csv`](ai-triage-export.csv) | Structured AI triage export. |
| [`alerts/live-fast-flux-alert-36.pdf`](alerts/live-fast-flux-alert-36.pdf) | Preserved first live Fast Flux alert PDF. |
| [`alerts/repeated-fast-flux-alert-42.pdf`](alerts/repeated-fast-flux-alert-42.pdf) | Preserved repeated alert/update PDF. |

## Integrity

See [`EVIDENCE-MANIFEST.csv`](EVIDENCE-MANIFEST.csv) and [`SHA256SUMS.txt`](SHA256SUMS.txt). Hashes were generated for the files as integrated into the final Scenario 03 repository.
