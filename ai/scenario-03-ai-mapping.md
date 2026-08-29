<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=6,12,19,24,30&height=125&section=header&text=%F0%9F%A4%96%20AI%20Integration%20Notes&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2003%20%C2%B7%20Fast%20Flux%20DNS%20%C2%B7%20AI%20Assistance&descSize=13&descAlignY=68&descColor=A855F7" width="100%" alt="AI Integration Notes" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-COMPLETE-2EA44F?style=flat-square) ![Workspace](https://img.shields.io/badge/Workspace-AI_Assistance-A855F7?style=flat-square) ![MITRE](https://img.shields.io/badge/MITRE-T1568.001-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🤖 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />
# 🤖 AI Integration Notes

## 🤖 Working chain

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

## 🏁 Contract fields added to the final SPL

- `alert_id`
- `alert_name`
- `scenario`
- `severity`
- `event_time`
- `source`
- `evidence_json`

The bridge normalizer turns `evidence_json` into the structured `evidence` object required by its schema.

## ✅ Final validation

A manual POST returned HTTP 200 and generated an event in `index=dns_soc_ai`. After the scheduled payload was corrected, scheduled Scenario 03 alert IDs such as `scenario-03-fastflux-...` also produced AI summaries in Splunk.

AI output remained advisory. The summary used medium confidence and explicitly avoided treating Fast Flux-like behavior as automatic proof of maliciousness.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🤖 Workspace](README.md) · [⬆ Back to top](#top)

**Evidence before attribution. Context before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
