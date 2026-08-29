#!/usr/bin/env bash
echo "===== FINAL CONTROLLER VALIDATION ====="
sudo bash -n /opt/dnsentinel/flux-rotate.sh \
  && echo "BASH_SYNTAX: OK" \
  || echo "BASH_SYNTAX: FAILED"

echo
echo "===== MATERIAL SETTINGS ====="
sudo grep -E '^(REGION|HOSTED_ZONE_ID|RECORD_NAME|TTL)=|dns-flux-node0[1-3]|sleep [0-9]+' \
  /opt/dnsentinel/flux-rotate.sh
