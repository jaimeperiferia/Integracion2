#prueba de dockerfile con springboot
FROM openjdk:8-jdk-alpine AS base
WORKDIR /app
EXPOSE 8080



FROM maven:3.5-jdk-8-alpine
WORKDIR /
COPY . .
RUN mvn clean test package

FROM base
WORKDIR /
COPY --from=build /app/target/arithmetica.jar ./app.jar
ENTRYPOINT ["java","-Djava.security.edg=file:/dev/./urandom","-jar","./app.jar"]



