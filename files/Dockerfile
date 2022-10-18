FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install at gawk net-tools openssh-server iptables -y
RUN ssh-keygen -A
RUN echo root:123456a | chpasswd 
RUN mkdir -p /var/run/sshd
RUN mkdir -p /etc/iptables_rules_ipv4/

ADD sshd_config /etc/ssh/sshd_config
ADD docker-entrypoint.sh /usr/bin/
ADD iptables.rules.ipv4.sh /etc/iptables_rules_ipv4/