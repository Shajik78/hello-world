FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER shajiknambiar@gmail.com
VOLUME /tmp
ADD hello-world-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'build/libs/hello-world-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
