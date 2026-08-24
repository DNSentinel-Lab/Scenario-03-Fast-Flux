<a id="top"></a>
<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=1,6,14,20,26&height=135&section=header&text=%F0%9F%A4%96%20AI%20Integration%20%2F%20Profile&fontSize=28&fontColor=ffffff&animation=fadeIn&desc=Scenario%2003%20%E2%80%94%20Fast%20Flux%20DNS&descSize=14&descAlignY=68&descColor=FF9F43" width="100%" alt="🤖 AI Integration / Profile" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_03-Planned-6E7781?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-AI_Integration_%2F_Profile-7B2CBF?style=flat-square)

[🏠 Scenario Home](../README.md) · [🏗️ Shared Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [🗂️ All Scenario Repositories](https://github.com/orgs/DNSentinel-Lab/repositories)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

**Status:** Planned — the shared AI bridge is common infrastructure and is built outside this repository.

This folder will contain only the scenario-specific payload/profile mapping once the final detection has stable fields.

## Expected workflow

```text
Stable Splunk detection
      ↓
Structured scenario payload
      ↓
Shared Flask / LLM bridge
      ↓
Structured AI summary
      ↓
Splunk index=dns_soc_ai
      ↓
Human SOC validation against raw evidence
```

## Rules

- AI assistance never becomes the source of truth.
- Do not let the LLM decide whether containment happens.
- Preserve the input payload and returned summary as evidence.
- Record where the AI was correct, incomplete or wrong.
- Add a real scenario profile here only after the detection fields are finalized.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

**DNSentinel Scenario 03 · Fast Flux DNS**

[🏠 Scenario Home](../README.md) · [🏗️ Infrastructure](https://github.com/DNSentinel-Lab/DNS-Lab-Infrastructure) · [⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1,6,14,20,26&height=75&section=footer" width="100%" alt="footer" />
