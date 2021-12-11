FROM maven:3.8.4-jdk-11
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN mvn package

