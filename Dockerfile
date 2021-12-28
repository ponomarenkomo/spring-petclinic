FROM openjdk:8-jdk-alpine
COPY /target/*SNAPSHOT.jar /home/spring/spring-petclinic
EXPOSE 5505
