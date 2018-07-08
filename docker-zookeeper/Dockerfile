FROM daocloud.io/darebeat/docker-java8

MAINTAINER darebeat<fengwei2010@126.com>

ENV ZOOKEEPER_VERSION=3.4.12
ENV ZK_HOME=/opt/zookeeper-${ZOOKEEPER_VERSION}

# Download Zookeeper
RUN wget -q http://mirror.vorboss.net/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz

# Install
RUN tar -xzf zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt \
# Configure
  && mv /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo_sample.cfg /opt/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo.cfg \
  && sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data \
  && sed -i -r 's|#(log4j.appender.ROLLINGFILE.MaxBackupIndex.*)|\1|g' $ZK_HOME/conf/log4j.properties \
  && sed -i -r 's|#autopurge|autopurge|g' $ZK_HOME/conf/zoo.cfg

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper-${ZOOKEEPER_VERSION}
VOLUME ["/opt/zookeeper-${ZOOKEEPER_VERSION}/conf", "/opt/zookeeper-${ZOOKEEPER_VERSION}/data"]

CMD /usr/sbin/sshd && /opt/zookeeper-${ZOOKEEPER_VERSION}/bin/zkServer.sh start-foreground
