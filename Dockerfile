FROM openshift/base-centos7
MAINTAINER Daniel Tschan <tschan@puzzle.ch>

RUN yum -y install links net-tools telnet iputils; yum clean all

ENTRYPOINT ["/bin/bash"]
