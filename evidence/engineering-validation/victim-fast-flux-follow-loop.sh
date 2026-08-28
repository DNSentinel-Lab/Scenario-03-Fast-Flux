#!/usr/bin/env bash
set -u
DOMAIN="flux.soclab.abdul4rehman215.tech"
RESOLVER="10.50.30.10"

while true; do
    TS=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    IP=$(dig @"$RESOLVER" "$DOMAIN" A +short | tail -1)

    echo "===== $TS ====="
    echo "DNS answer: $IP"

    curl -sS \
      --connect-timeout 5 \
      -H "Host: $DOMAIN" \
      "http://$IP/" \
      -o /dev/null \
      -w "HTTP destination=$IP status=%{http_code} remote_ip=%{remote_ip}\n"

    sleep 20
done
