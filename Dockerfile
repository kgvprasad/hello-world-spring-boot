FROM openjdk:8-jdk-alpine

VOLUME /tmp

COPY target/myproject-0.0.1-SNAPSHOT.jar  myproject-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/myproject-0.0.1-SNAPSHOT.jar"]