FROM openjdk:8-jdk-alpine

MAINTAINER Michael Bieri <michael.bieri@zweivelo.ch>

ARG JAR_FILE
ADD ${JAR_FILE} /usr/share/simple-docker/simple-docker.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/usr/share/simple-docker/simple-docker.jar"]
