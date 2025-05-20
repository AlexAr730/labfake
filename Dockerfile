# Etapa de empaquetado (runtime)
FROM openjdk:11-jdk-slim
WORKDIR /app
# Copia el JAR de la etapa 'build' a la etapa actual
COPY --from=build /app/target/labfaker.jar labfaker.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","labfaker.jar"]