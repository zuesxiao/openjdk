FROM openjdk:8-jre-alpine
MAINTAINER xiaoling

ENV TIME_ZONE Asia/Shanghai

#安装tzdata安装包
RUN apk add --update --no-cache fontconfig ttf-dejavu tzdata && echo "${TIME_ZONE}" > /etc/timezone && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
