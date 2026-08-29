#!/usr/bin/env bash
echo "===== SCENARIO 03 FLUX NODE START STATE ====="
echo "UTC: $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
aws ec2 describe-instances \
  --region us-east-1 \
  --filters "Name=tag:Name,Values=dns-flux-node01,dns-flux-node02,dns-flux-node03" \
  --query 'Reservations[].Instances[].[Tags[?Key==`Name`]|[0].Value,State.Name,PublicIpAddress]' \
  --output table
