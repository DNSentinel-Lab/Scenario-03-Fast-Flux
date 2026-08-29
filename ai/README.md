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
%%{init: {
  "theme": "base",
  "themeVariables": {
    "background": "#030712",
    "primaryTextColor": "#ffffff",
    "lineColor": "#f8fafc",
    "fontSize": "31px"
  },
  "flowchart": {
    "nodeSpacing": 48,
    "rankSpacing": 58,
    "curve": "basis",
    "padding": 20
  }
}}%%

flowchart LR

    %% =====================================================
    %% 1 · DETECTION + ALERT
    %% =====================================================
    subgraph DETECT[" "]
        direction TB

        H1["🚨 1 · DETECTION + ALERT"]

        A["🧠 Detection v1.0"]

        B["🚨 Splunk Alert"]

        H1 ==> A ==> B
    end


    %% =====================================================
    %% 2 · AI ENRICHMENT
    %% =====================================================
    subgraph AI[" "]
        direction TB

        H2["🤖 2 · AI ENRICHMENT"]

        C["🔗 Webhook"]

        D["⚙️ dns-soc-ai-bridge"]

        E["🧠 LLM<br/>Context + Summary"]

        H2 ==> C ==> D ==> E
    end


    %% =====================================================
    %% 3 · RETURN TO SPLUNK
    %% =====================================================
    subgraph RETURN[" "]
        direction TB

        H3["📥 3 · SPLUNK RETURN"]

        F["📥 Splunk HEC"]

        G["🔎 AI Triage Index<br/>dns_soc_ai"]

        H3 ==> F ==> G
    end


    %% =====================================================
    %% 4 · HUMAN VALIDATION
    %% =====================================================
    subgraph HUMAN[" "]
        direction TB

        H4["👤 4 · HUMAN DECISION"]

        H["🔍 Human Validation<br/>Review Raw Evidence"]

        V["✅ Analyst Verdict<br/>Evidence Owns the Truth"]

        H4 ==> H ==> V
    end


    %% =====================================================
    %% KEEP ALL 4 STAGES PARALLEL
    %% =====================================================
    DETECT ==> AI
    AI ==> RETURN
    RETURN ==> HUMAN


    %% =====================================================
    %% GLOSSY NEON HEADERS
    %% =====================================================
    classDef detectHeader fill:#450a0a,stroke:#fb7185,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    classDef aiHeader fill:#4c1d95,stroke:#e879f9,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    classDef splunkHeader fill:#075985,stroke:#67e8f9,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    classDef humanHeader fill:#14532d,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:35px,font-weight:bold;

    class H1 detectHeader;
    class H2 aiHeader;
    class H3 splunkHeader;
    class H4 humanHeader;


    %% =====================================================
    %% DETECTION COLORS
    %% =====================================================
    classDef detection fill:#7f1d1d,stroke:#fb7185,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef alert fill:#9a3412,stroke:#fb923c,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    class A detection;
    class B alert;


    %% =====================================================
    %% AI COLORS
    %% =====================================================
    classDef webhook fill:#312e81,stroke:#818cf8,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef bridge fill:#581c87,stroke:#c084fc,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef llm fill:#701a75,stroke:#f0abfc,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    class C webhook;
    class D bridge;
    class E llm;


    %% =====================================================
    %% SPLUNK RETURN COLORS
    %% =====================================================
    classDef hec fill:#0c4a6e,stroke:#22d3ee,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef index fill:#075985,stroke:#7dd3fc,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    class F hec;
    class G index;


    %% =====================================================
    %% HUMAN VALIDATION COLORS
    %% =====================================================
    classDef analyst fill:#065f46,stroke:#4ade80,stroke-width:6px,color:#ffffff,font-size:31px,font-weight:bold;

    classDef verdict fill:#166534,stroke:#86efac,stroke-width:7px,color:#ffffff,font-size:31px,font-weight:bold;

    class H analyst;
    class V verdict;


    %% =====================================================
    %% PREMIUM NEON PANELS
    %% =====================================================
    style DETECT fill:#17080c,stroke:#fb7185,stroke-width:4px
    style AI fill:#150821,stroke:#d946ef,stroke-width:4px
    style RETURN fill:#051521,stroke:#22d3ee,stroke-width:4px
    style HUMAN fill:#06150d,stroke:#4ade80,stroke-width:4px


    %% =====================================================
    %% BRIGHT CONNECTORS
    %% =====================================================
    linkStyle default stroke:#f8fafc,stroke-width:6px;
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
