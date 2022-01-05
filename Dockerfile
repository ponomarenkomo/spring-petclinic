#
# Build Stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml package

#
# Package Stage
#

FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/*SNAPSHOT.jar /usr/local/lib/spring-clinic.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
