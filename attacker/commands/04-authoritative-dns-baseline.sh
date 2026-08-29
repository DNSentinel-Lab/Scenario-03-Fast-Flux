#!/usr/bin/env bash
echo "===== PRE-EXERCISE AUTHORITATIVE DNS ====="
AUTH_NS=$(dig +short NS soclab.abdul4rehman215.tech | head -n 1)
echo "AUTHORITATIVE_NS: $AUTH_NS"
dig @"$AUTH_NS" flux.soclab.abdul4rehman215.tech A +noall +answer
echo "UTC: $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
