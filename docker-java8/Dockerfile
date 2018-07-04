FROM daocloud.io/darebeat/docker-ssh

MAINTAINER darebeat<fengwei2010@126.com>

# java
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz && \
    tar -xvzf jdk-8u171-linux-x64.tar.gz -C /opt && \
    rm -rf jdk-8u171-linux-x64.tar.gz

# ENV
ENV JAVA_HOME /opt/jdk1.8.0_171
ENV PATH $JAVA_HOME/bin:$PATH
