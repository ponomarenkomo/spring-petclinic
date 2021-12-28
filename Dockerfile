FROM openjdk:8-jdk-alpine
COPY /target/*SNAPSHOT.jar /home
EXPOSE 5505
