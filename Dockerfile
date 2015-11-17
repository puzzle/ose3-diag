FROM openshift/base-centos7
MAINTAINER Daniel Tschan <tschan@puzzle.ch>

RUN yum -y install dnsutil curl nmap lsof jq links net-tools telnet iputils shellinabox; yum clean all

EXPOSE 4200
CMD ["/usr/bin/shellinaboxd, "-s", "/:LOGIN"]
