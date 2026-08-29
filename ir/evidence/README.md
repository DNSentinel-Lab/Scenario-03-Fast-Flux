# IR Evidence — Sonia

This directory contains the curated evidence used by the role narrative. The original preservation packages remain the source archives; this integrated repository keeps only the final public/reveal-ready evidence needed for closeout.

| File | What it proves |
|---|---|
| [`E01-aws-sourcetype-inventory.png`](E01-aws-sourcetype-inventory.png) | AWS sourcetype inventory used before Resolver source discovery. |
| [`E03-independent-three-ip-dns-answer-history.png`](E03-independent-three-ip-dns-answer-history.png) | Resolver Query Logs independently show all three historical A answers. |
| [`E04-exact-dns-answer-transition-timeline.png`](E04-exact-dns-answer-transition-timeline.png) | Answer transitions reconstructed using AWS query_timestamp. |
| [`E05-historical-ttl-not-exposed.png`](E05-historical-ttl-not-exposed.png) | Historical Resolver data did not expose TTL. |
| [`E06-victim-to-three-ips-narrow-window.png`](E06-victim-to-three-ips-narrow-window.png) | IR VPC Flow correlation from victim to all three A-answer IPs. |
| [`E07-current-dns-activity-check-zero.png`](E07-current-dns-activity-check-zero.png) | No current matching DNS activity at IR decision time. |
| [`E08-current-network-activity-check-zero.png`](E08-current-network-activity-check-zero.png) | No current matching VPC Flow activity at IR decision time. |
| [`E09-single-client-scope.png`](E09-single-client-scope.png) | Expanded IR scope remains one resolver-visible client. |
| [`E10-splunk-endpoint-telemetry-gap-by-hostname.png`](E10-splunk-endpoint-telemetry-gap-by-hostname.png) | Splunk did not provide useful endpoint/process telemetry for victim. |
| [`E11-focused-ssm-to-root-session-evidence.png`](E11-focused-ssm-to-root-session-evidence.png) | Local journal shows SSM-to-root interactive context. |
| [`E12-defender-discovered-scenario-03-shell-history.png`](E12-defender-discovered-scenario-03-shell-history.png) | Root shell history shows Scenario 03 dig/curl follow-up logic. |
| [`E13-cloudtrail-ssm-actor.png`](E13-cloudtrail-ssm-actor.png) | CloudTrail StartSession context for the later interactive session. |
| [`E14-full-window-ssm-session-scope.png`](E14-full-window-ssm-session-scope.png) | Full-window SSM session scope. |
| [`E15-no-earlier-interactive-login.png`](E15-no-earlier-interactive-login.png) | Earlier local activity not explained by another interactive login. |
| [`E16-cron-ruled-out.png`](E16-cron-ruled-out.png) | Cron did not contain Scenario 03 dig/curl/resolver logic. |
| [`E17-no-active-dig-curl-process.png`](E17-no-active-dig-curl-process.png) | No active matching dig/curl process at IR check time. |
| [`E18-active-rpz-contains-no-scenario-03-flux-rule.png`](E18-active-rpz-contains-no-scenario-03-flux-rule.png) | Active RPZ contains no Scenario 03 flux rule. |
| [`E19-unbound-healthy.png`](E19-unbound-healthy.png) | Unbound configuration valid and service active. |
| [`E20-final-victim-dns-verification.png`](E20-final-victim-dns-verification.png) | Victim-side normal DNS + Scenario 03 public answer / live TTL verification. |
| [`T01-resolver-self-query-refused.png`](T01-resolver-self-query-refused.png) | Troubleshooting: resolver self-query refused; client-path validation used instead. |

## Integrity

See [`EVIDENCE-MANIFEST.csv`](EVIDENCE-MANIFEST.csv) and [`SHA256SUMS.txt`](SHA256SUMS.txt). Hashes were generated for the files as integrated into the final Scenario 03 repository.
