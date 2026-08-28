# AI Integration Notes

## Working chain

```text
Saved Fast Flux alert
  -> native Splunk webhook
  -> http://dns-soc-ai-bridge:5000/splunk-webhook
  -> Flask/Gunicorn bridge
  -> OpenAI response generation
  -> Splunk HEC
  -> index=dns_soc_ai
  -> human SOC validation
```

The AI bridge was already shared infrastructure from the earlier scenario. Scenario 03 required the alert result to match the bridge contract.

## Contract fields added to the final SPL

- `alert_id`
- `alert_name`
- `scenario`
- `severity`
- `event_time`
- `source`
- `evidence_json`

The bridge normalizer turns `evidence_json` into the structured `evidence` object required by its schema.

## Final validation

A manual POST returned HTTP 200 and generated an event in `index=dns_soc_ai`. After the scheduled payload was corrected, scheduled Scenario 03 alert IDs such as `scenario-03-fastflux-...` also produced AI summaries in Splunk.

AI output remained advisory. The summary used medium confidence and explicitly avoided treating Fast Flux-like behavior as automatic proof of maliciousness.
