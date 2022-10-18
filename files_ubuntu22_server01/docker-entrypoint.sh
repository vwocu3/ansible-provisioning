#!/usr/bin/env bash
sh /etc/iptables_rules_ipv4/iptables.rules.ipv4.sh
/usr/sbin/sshd -D -f /etc/ssh/sshd_config