FROM centos

MAINTAINER darebeat<fengwei2010@126.com>

RUN yum install -y openssh-server sudo openssh-clients
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

# ADD USER:root:root and add it into `sudoers`
RUN echo "root:root" | chpasswd
RUN echo "root   ALL=(ALL)       ALL" >> /etc/sudoers

# start sshd service
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
