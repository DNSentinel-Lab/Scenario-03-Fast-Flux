#!/usr/bin/env bash
# First press Ctrl+C in the controller terminal. Then run:
FLUX_END=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
echo "OFFICIAL_FLUX_END: $FLUX_END"
echo "CONTROLLER_EXITED: YES"
echo "===== SCENARIO 03 OFFICIAL FAST FLUX COMPLETE ====="
pgrep -af 'flux-rotate\.sh' || echo "CONTROLLER_PROCESS: NOT RUNNING"
