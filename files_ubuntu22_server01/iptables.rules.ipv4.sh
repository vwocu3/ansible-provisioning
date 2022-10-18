#!/usr/bin/env bash

iptables -I OUTPUT 1 -m state --state NEW ! -p udp -j LOG --log-prefix "NonBlock:UDP"
iptables -I OUTPUT 1 -m state --state NEW ! -p udp -j DROP

iptables -I OUTPUT -p tcp --dport  6001:6015 -j LOG --log-prefix "OUTPUT 6001:6015"
iptables -I OUTPUT -p tcp --dport  6001:6015 -j ACCEPT

iptables -I OUTPUT -p tcp --dport  2222 -j LOG --log-prefix "OUTPUT 2222"
iptables -I OUTPUT -p tcp --dport  2222 -j ACCEPT