FROM centos

MAINTAINER darebeat<fengwei2010@126.com>

RUN yum install -y openssh-server sudo openssh-clients wget

# ADD USER:root:root and add it into `sudoers`
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config \
  && echo "root:root" | chpasswd \
  && echo "root   ALL=(ALL)       ALL" >> /etc/sudoers \
  && ssh-keygen -t rsa -b 1024 -f /root/.ssh/id_rsa -N "" \
  && cp -v /root/.ssh/{id_rsa.pub,authorized_keys}

COPY ./config /root/.ssh/

RUN chmod -v 0400 /root/.ssh/authorized_keys \
  && chmod -v 0400  /root/.ssh/config \
  && mkdir /var/run/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
