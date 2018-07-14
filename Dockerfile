FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER Marcello_deSales@intuit.com
VOLUME /tmp
ADD app.jar app.jar
RUN sh -c 'build/libs/hello-world-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
