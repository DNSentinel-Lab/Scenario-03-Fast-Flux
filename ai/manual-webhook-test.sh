#!/usr/bin/env bash
# Successful manual Splunk-style payload used to validate the AI bridge end-to-end.
docker exec dns-soc-splunk curl -sS -i \
  -X POST \
  -H 'Content-Type: application/json' \
  -d '{
    "result": {
      "alert_id": "scenario-03-fastflux-test",
      "alert_name": "Suspicious Fast Flux DNS Behavior",
      "scenario": "Scenario 03 - Fast Flux DNS",
      "severity": "medium",
      "event_time": "2026-08-27T16:10:00Z",
      "source": "10.50.30.20",
      "evidence_json": "{\"client_ip\":\"10.50.30.20\",\"domain\":\"flux.soclab.abdul4rehman215.tech\",\"matched_connections\":10,\"unique_matched_ips\":3,\"matched_ips\":\"13.220.94.188,52.73.218.100,54.81.98.44\",\"detection_reason\":\"Multiple DNS answer IPs were followed by connections to those same IPs within 5 minutes\",\"mitre_technique\":\"T1568.001\"}"
    }
  }' \
  http://dns-soc-ai-bridge:5000/splunk-webhook
