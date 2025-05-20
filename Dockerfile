FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests


FROM openjdk:11-jdk-slim
WORKDIR /app
COPY target/labfaker.jar labfaker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "labfaker.jar"]
