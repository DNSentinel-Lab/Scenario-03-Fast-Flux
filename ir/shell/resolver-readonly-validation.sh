#!/usr/bin/env bash
# Scenario 03 IR — resolver safe-state checks
# Reference collection of commands used during the investigation.
# No configuration changes, reloads, restarts or RPZ edits were performed.

date -u
hostname

grep -RniE 'flux\.soclab\.abdul4rehman215\.tech|10\.50\.30\.30' /etc/unbound /etc 2>/dev/null | head -n 80
grep -nE 'flux\.soclab\.abdul4rehman215\.tech|rpz-test\.soclab\.abdul4rehman215\.tech' /etc/unbound/rpz/dns-soc.rpz
grep -Rni 'dns-soc.rpz' /etc/unbound 2>/dev/null

unbound-checkconf
systemctl is-active unbound
