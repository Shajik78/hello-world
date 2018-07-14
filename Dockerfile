FROM openjdk:10-jre-slim
MAINTAINER shajiknambiar@gmail.com
COPY ./build/libs/hello-world-0.0.1-SNAPSHOT.jar /usr/src/
WORKDIR /usr/src/
EXPOSE 8080
CMD ["java", "-jar", "hola-docker-1.0.0-SNAPSHOT.jar"]
