FROM adoptopenjdk:11-jre-hotspot

MAINTAINER OpenSearchServer

ADD target/opensearchserver-*-app.jar /opt/opensearchserver/opensearchserver.jar

VOLUME /var/lib/opensearchserver

EXPOSE 9090/tcp

WORKDIR /var/lib/opensearchserver/

CMD ["java", "-Dfile.encoding=UTF-8", "-jar", "/opt/opensearchserver/opensearchserver.jar"]
