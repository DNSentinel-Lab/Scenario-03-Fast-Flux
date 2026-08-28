#!/usr/bin/env bash
while true; do
  echo "===== $(date -u '+%Y-%m-%dT%H:%M:%SZ') ====="
  dig @10.50.30.10 flux.soclab.abdul4rehman215.tech A +noall +answer
  sleep 20
done
