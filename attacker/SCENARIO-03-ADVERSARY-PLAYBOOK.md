# Scenario 03 Official Simulation Playbook — Lubaba

## Before start

- confirm the three controlled nodes are healthy;
- confirm current node public IPs;
- confirm `flux.soclab.abdul4rehman215.tech` uses the intended 60-second TTL;
- confirm the rotation mechanism is ready but not yet producing the official timeline;
- record UTC start in the private ground-truth file;
- do not reveal the sequence to the SOC Analyst.

## Official activity

1. start the approved Route 53 rotation cycle;
2. run the victim resolver/follow-up behavior through the normal defender DNS path;
3. do not adjust the activity based on Splunk alerts;
4. preserve UTC transitions and current node addresses as private ground truth;
5. stop at the agreed scenario duration.

## Do not

- edit Detection v1.0;
- edit the benign lookup;
- inspect SOC conclusions to steer traffic;
- activate IR containment;
- use third-party infrastructure.

## Handoff

Keep ground truth private until Abdul-Rehman records the SOC disposition and Sonia records the IR decision.
