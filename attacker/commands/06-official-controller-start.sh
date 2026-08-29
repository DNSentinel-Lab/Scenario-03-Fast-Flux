#!/usr/bin/env bash
echo "===== SCENARIO 03 OFFICIAL FAST FLUX START ====="
echo "HOST: $(hostname)"
echo "CONTROLLER: /opt/dnsentinel/flux-rotate.sh"
echo "CONTROLLER_SHA256: $(sha256sum /opt/dnsentinel/flux-rotate.sh | awk '{print $1}')"
FLUX_START=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
echo "OFFICIAL_FLUX_START: $FLUX_START"
sudo /opt/dnsentinel/flux-rotate.sh 2>&1 | tee /tmp/scenario03-official-flux.log
