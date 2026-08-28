# Saved Alert Configuration

- **Title:** Suspicious Fast Flux DNS Behavior
- **Type:** Scheduled
- **Cron:** `*/5 * * * *`
- **Trigger condition:** Number of Results > 0
- **Trigger mode:** Once
- **Throttle:** Off during validation
- **Severity in result:** Medium
- **Action 1:** Add to Triggered Alerts
- **Action 2:** Webhook
- **Webhook URL:** `http://dns-soc-ai-bridge:5000/splunk-webhook`
- **MITRE:** T1568.001

The alert was validated with live controlled rotation and appeared in Splunk Triggered Alerts before the AI integration was finalized.
