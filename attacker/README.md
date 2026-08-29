<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=190&section=header&text=%F0%9F%8E%AF%20Project%20Lead%20%26%20Fast%20Flux%20Operator&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Scenario%2003%20%C2%B7%20Lubaba%20%C2%B7%20Controlled%20Rotation%20%2B%20Private%20Ground%20Truth&descSize=15&descAlignY=61&descColor=F59E0B" width="100%" alt="🎯 Project Lead & Fast Flux Operator" />

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=18&duration=2700&pause=850&color=F59E0B&center=true&vCenter=true&repeat=true&width=1050&height=66&lines=Preflight%20%E2%86%92%20Authoritative%20Baseline%20%E2%86%92%20Rotate%20%E2%86%92%20Victim%20Follow-Up%20%E2%86%92%20Stop;Preserve%20Ground%20Truth%20%E2%86%92%20Reveal%20only%20after%20defender%20decisions%20lock" alt="🎯 Project Lead & Fast Flux Operator workflow" />

![Role](https://img.shields.io/badge/Role-Project_Lead%2FOperator-F59E0B?style=flat-square) ![Owner](https://img.shields.io/badge/Owner-Lubaba-A855F7?style=flat-square) ![Execution](https://img.shields.io/badge/Official_Execution-Complete-2EA44F?style=flat-square)

[🏠 Scenario Home](../README.md) · [🎬 Execution](../SCENARIO-03-EXECUTION.md) · [🧾 Evidence](evidence/README.md) · [🎭 Exercise](../exercise/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🎯 Scenario 03 Operator Workspace

Lubaba owned the official Fast Flux execution boundary: artifact validation, authoritative pre-flight, controlled Route 53 rotation, real victim follow-up, clean shutdown, private ground-truth discipline and final reveal.

> [!IMPORTANT]
> The operator did **not** use Splunk results to steer the run. Approved timing/controller logic stayed frozen.

## 🚦 Execution Snapshot

| Field | Result |
|---|---|
| Controller | `dns-attack01` |
| Controller window | `12:43:43Z → 12:58:30Z` |
| Victim follow-up | `12:52:18Z → 12:58:04Z` |
| Controlled destinations | 3 public nodes |
| Victim behavior | DNS resolve → HTTP follow-up |
| HTTP outcome | `200` observed |
| Stop proof | victim loop + controller stopped cleanly |
| Cleanup | temporary flux EC2 pool retired after exercise |

## 🔁 Operator Flow

```mermaid
flowchart LR
    A["🔐 Preflight"] --> B["🌐 Authoritative Baseline"]
    B --> C["🔄 Start Controller"]
    C --> D["🧭 Complete 3-Node Rotation"]
    D --> E["🖥️ Victim Follow-Up"]
    E --> F["🛑 Stop Victim"]
    F --> G["🛑 Stop Controller"]
    G --> H["🧾 Preserve Ground Truth"]
    H --> I["🎭 Final Reveal"]
```

## 🖼️ Official Evidence Highlights

<table>
<tr>
<td width="33%"><img src="evidence/04-authoritative-dns-baseline.png" alt="Authoritative baseline"><br/><sub><b>Baseline:</b> authoritative state before the official rotation.</sub></td>
<td width="33%"><img src="evidence/06-official-fast-flux-start.png" alt="Official start"><br/><sub><b>Start:</b> controller identity and first official transition.</sub></td>
<td width="33%"><img src="evidence/07-first-complete-rotation-cycle.png" alt="Rotation cycle"><br/><sub><b>Rotation:</b> first complete three-node cycle.</sub></td>
</tr>
<tr>
<td width="50%" colspan="1"><img src="evidence/09-victim-follows-third-node.png" alt="Victim follows third node"><br/><sub><b>Follow-up:</b> victim reached the returned destination successfully.</sub></td>
<td width="50%" colspan="2"><img src="evidence/12-controller-stop-confirmation.png" alt="Controller stop"><br/><sub><b>Clean stop:</b> controller shutdown and process absence were preserved.</sub></td>
</tr>
</table>

## 🗂️ Start Here

- [`PROJECT-LEAD-ADVERSARY.md`](PROJECT-LEAD-ADVERSARY.md) — flagship operator story
- [`GROUND-TRUTH.md`](GROUND-TRUTH.md) — reveal-ready final timeline
- [`COMMANDS.md`](COMMANDS.md) — command/host ownership index
- [`SCENARIO-03-ADVERSARY-PLAYBOOK.md`](SCENARIO-03-ADVERSARY-PLAYBOOK.md) — approved protocol
- [`TROUBLESHOOTING-AND-LESSONS.md`](TROUBLESHOOTING-AND-LESSONS.md) — execution integrity lessons
- [`evidence/`](evidence/) — curated reveal-ready evidence
- [`commands/`](commands/) — exact preserved operator command files

> **Operator boundary:** prove what was intentionally generated. Let defenders prove what they could establish independently.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [📖 Operator Story](PROJECT-LEAD-ADVERSARY.md) · [🧾 Evidence](evidence/README.md)

<br/>

**Preserve the boundary. Generate the behavior. Let the defenders prove the rest.**

[⬆ Back to top](#top)

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=26,20,14,6,1&height=80&section=footer" width="100%" alt="DNSentinel Scenario 03 footer" />
