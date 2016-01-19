FROM openshift/base-centos7
MAINTAINER Daniel Tschan <tschan@puzzle.ch>

RUN yum -y install openssh-server passwd dnsutil curl nmap lsof jq links net-tools telnet iputils shellinabox initscripts; yum clean all
RUN /usr/sbin/sshd-keygen
RUN echo shellinabox | passwd --stdin root

ADD run.sh /tmp/run.sh

# USER 1001

EXPOSE 4200
CMD "/tmp/run.sh"
