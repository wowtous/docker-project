FROM centos:latest
MAINTAINER fengwei2010@126.com

#go版本
ARG GO_VER=1.10.3

RUN cd /usr/src \
    && curl -o go.tar.gz https://studygolang.com/dl/golang/go${GO_VER}.linux-amd64.tar.gz -L \
    && mkdir /usr/local/go \
    && tar -xzvf go.tar.gz -C /usr/local/go  --strip-components 1 \
    && sed -i "s/export PATH/PATH=\/usr\/local\/go\/bin:\$HOME\/go\/bin:\$PATH\nGOPATH=\$HOME\/go\nexport PATH/" /etc/profile \
    && rm -rf go.tar.gz
