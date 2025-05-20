FROM openjdk:11-jdk-slim
WORKDIR /app
COPY target/labfaker.jar labfaker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "labfaker.jar"]
