FROM maven:latest AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests


FROM openjdk:11-jdk-slim
WORKDIR /app
COPY --from=build /app/target/labfaker.jar labfaker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "labfaker.jar"]
