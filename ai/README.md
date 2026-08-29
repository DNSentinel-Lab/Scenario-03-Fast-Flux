<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,12,19,24,30&height=190&section=header&text=%F0%9F%A4%96%20AI-Assisted%20Alert%20Summarization&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Shared%20Bridge%20%C2%B7%20Human-Validated%20Advisory%20Evidence&descSize=15&descAlignY=61&descColor=A855F7" width="100%" alt="🤖 AI-Assisted Alert Summarization" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=A855F7&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Detection%20%E2%86%92%20Webhook%20%E2%86%92%20AI%20Bridge%20%E2%86%92%20LLM%20%E2%86%92%20HEC%20%E2%86%92%20Splunk;AI%20summarizes.%20Humans%20validate.%20Evidence%20decides." alt="🤖 AI-Assisted Alert Summarization workflow" />

![AI](https://img.shields.io/badge/SOC_Grade-Partially_Correct-A855F7?style=flat-square) ![Authority](https://img.shields.io/badge/Decision_Authority-Human-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Detection](../detection-engineering/README.md) · [🔎 SOC Validation](../soc/AI-VALIDATION.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🤖 Scenario 03 — AI-Assisted Alert Summarization

Scenario 03 reused the shared DNSentinel Flask/OpenAI/HEC bridge. No second AI service was built inside this repository.

## 🔁 Evidence Path

```mermaid
flowchart LR
    A["🧠 Detection v1.0"] --> B["🚨 Splunk Alert"]
    B --> C["🔗 Webhook"]
    C --> D["🤖 dns-soc-ai-bridge"]
    D --> E["🧠 LLM"]
    E --> F["📥 Splunk HEC"]
    F --> G["🔎 index=dns_soc_ai"]
    G --> H["👤 Human Validation"]
```

## ✅ What AI Got Right

- preserved client/domain and the three alert IPs;
- mapped the behavior to `T1568.001`;
- kept Command & Control as behavioral context rather than proof;
- required human validation;
- avoided declaring confirmed malware or malicious C2;
- listed important missing evidence such as TTL/history and endpoint/process context.

## ⚖️ Why the SOC Grade Stayed **Partially Correct**

- some DNS-to-IP statements depended on the production alert correlation;
- the advisory output preceded the analyst's later baseline, one-client scope, benign-lookup result and full manual VPC Flow validation;
- it could not establish malicious intent or authorize containment.

<table>
<tr>
<td width="50%"><img src="../screenshots/detection-engineering/09-ai-triage-result.png" alt="AI triage result"><br/><sub><b>Engineering path:</b> Scenario 03 evidence returned through the shared bridge.</sub></td>
<td width="50%"><img src="../soc/evidence/E18-ai-raw-json.png" alt="AI raw JSON"><br/><sub><b>SOC validation:</b> raw AI output was inspected rather than trusted as a verdict.</sub></td>
</tr>
</table>

## 🗂️ Artifacts

- [`scenario-03-ai-mapping.md`](scenario-03-ai-mapping.md) — scenario evidence contract
- [`ai-validation-searches.spl`](ai-validation-searches.spl) — reusable validation searches
- [`manual-webhook-test.sh`](manual-webhook-test.sh) — engineering test artifact
- [`../soc/AI-VALIDATION.md`](../soc/AI-VALIDATION.md) — official human validation record

> **Operating sequence:** raw evidence → analyst hypothesis → AI review → AI validation → human disposition.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🔎 SOC Workspace](../soc/README.md) · [📖 AI Mapping](scenario-03-ai-mapping.md)

<br/>

**AI can accelerate context. It cannot inherit decision authority.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
