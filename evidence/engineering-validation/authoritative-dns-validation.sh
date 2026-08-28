#!/usr/bin/env bash
AUTH_NS=$(dig NS soclab.abdul4rehman215.tech +short | head -1)

dig @"$AUTH_NS" flux.soclab.abdul4rehman215.tech \
  A +norecurse +noall +answer
