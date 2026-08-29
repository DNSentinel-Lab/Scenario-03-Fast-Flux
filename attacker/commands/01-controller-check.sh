#!/usr/bin/env bash
echo "===== CONTROLLER CHECK ====="
ls -l /opt/dnsentinel/flux-rotate.sh
printf 'SHA256: '
sha256sum /opt/dnsentinel/flux-rotate.sh | awk '{print $1}'
echo "===== RUNNING CHECK ====="
pgrep -af 'flux-rotate\.sh' || echo "No flux-rotate.sh process running"
