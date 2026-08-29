# Scenario 03 Operator — Troubleshooting and Lessons

Only issues that materially affected execution integrity are kept here. Minor console navigation, copy/paste, and host-location questions are intentionally excluded from the final learning record.

## 1. Deployed controller hash differed from the repository copy

**What happened:** pre-flight SHA256 on `/opt/dnsentinel/flux-rotate.sh` did not match the preserved repository artifact.

**Why it mattered:** silently replacing a live controller during an official exercise would weaken reproducibility and could change the approved behavior.

**What Lubaba did:** she inspected the deployed content, ran `bash -n`, and verified the material configuration: region, record name, TTL, three-node list, Route 53 UPSERT logic and 120-second wait.

**Outcome:** the live controller was used unchanged after the meaningful settings were proven equivalent to the approved design.

**Lesson:** a hash mismatch is a reason to validate provenance and behavior, not a reason to overwrite a working artifact without review.

## 2. Authoritative DNS and resolver DNS were treated as different evidence views

The pre-flight baseline queried Route 53 authority directly. The official victim later resolved through `dns-soc-resolver01`.

**Lesson:** authoritative state proves what the zone publishes; resolver state also includes caching/TTL behavior. Use the right view for the question being asked.

## 3. Timing stayed frozen

The controller retained its approved 120-second wait and the victim retained its 20-second follow-up interval. Nothing was accelerated after the start gate to force Detection v1.0.

**Lesson:** a meaningful detection test accepts either a hit or a miss from the frozen rule.

## 4. Clean stop was explicitly proven

The victim loop was stopped first. The controller was then stopped and `pgrep` confirmed no `flux-rotate.sh` process remained.

**Lesson:** session closure is not process-state evidence. Closeout should prove that activity actually ended.
