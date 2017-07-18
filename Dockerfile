
FROM openjdk:8-jre-alpine

MAINTAINER lulichn <daisuke.develop@gmail.com>

ENV EMBULK_VERSION 0.8.27

RUN \
	apk --no-cache add --virtual deps curl && \
	curl -L https://dl.bintray.com/embulk/maven/embulk-$EMBULK_VERSION.jar --create-dirs -o /opt/embulk && \
	apk del deps

ENTRYPOINT ["java", "-jar", "/opt/embulk"]
CMD ["--help"]

