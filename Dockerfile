FROM openjdk:8-jre-slim
MAINTAINER shajiknambiar@gmail.com
ADD hello-world-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'build/libs/hello-world-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

FROM openjdk:10-jre-slim
MAINTAINER shajiknambiar@gmail.com
COPY ./build/libs/hello-world-0.0.1-SNAPSHOT.jar /usr/src/hola/
WORKDIR /usr/src/hola
EXPOSE 8080
CMD ["java", "-jar", "hola-docker-1.0.0-SNAPSHOT.jar"]
