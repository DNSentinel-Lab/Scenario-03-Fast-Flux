#!/usr/bin/env bash
# Scenario 03 IR — defender-side victim read-only checks
# Reference collection of commands used during the investigation.
# Run deliberately and one at a time; this file was not executed as a batch script.

date -u
hostname
whoami

journalctl --since "2026-08-28 12:20:00 UTC" --until "2026-08-28 13:05:00 UTC" --no-pager | tail -n 80
journalctl --since "2026-08-28 12:50:00 UTC" --until "2026-08-28 12:55:00 UTC" --no-pager | grep -Ei 'ssm-user|sudo|su\[|session|COMMAND'
last -Fai | head -n 20

ls -l /root/.bash_history /home/ssm-user/.bash_history 2>/dev/null
tail -n 80 /root/.bash_history 2>/dev/null
tail -n 80 /home/ssm-user/.bash_history 2>/dev/null

grep -n -B 5 -A 10 -E 'SCENARIO 03|OFFICIAL VICTIM FOLLOW-UP|flux\.soclab' /root/.bash_history 2>/dev/null
journalctl --since "2026-08-28 12:10:00 UTC" --until "2026-08-28 13:10:00 UTC" --no-pager | grep -Ei 'sshd|Accepted|session opened|sudo|su\[|ssm-user'

crontab -l 2>/dev/null
grep -RniE 'flux\.soclab|dig |curl |10\.50\.30\.10' /etc/cron* 2>/dev/null

ps -ef | grep -Ei 'flux\.soclab|dig |curl ' | grep -v grep
pgrep -af 'dig|curl'

# Final DNS verification from dns-soc-victim01 only
dig @10.50.30.10 example.com A
dig @10.50.30.10 flux.soclab.abdul4rehman215.tech A
