#!/usr/bin/env bash
echo "===== DEPLOYED CONTROLLER CONTENT ====="
sudo sed -n '1,240p' /opt/dnsentinel/flux-rotate.sh
echo "===== END CONTROLLER CONTENT ====="
