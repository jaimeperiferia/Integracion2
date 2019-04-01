#prueba de dockerfile con springboot
FROM openjdk:8-jdk-alpine AS base
WORKDIR /
EXPOSE 9000

FROM maven:3.5.4-jdk-8-alpine AS build
ARG APP_VERSION
WORKDIR /
COPY . .
RUN mvn versions:set -DnewVersion=${APP_VERSION}
RUN mvn clean test package

FROM base AS final
ARG APP_VERSION
WORKDIR /
COPY --from=build /target/Aritmetica-${APP_VERSION}.jar ./app.jar
ENTRYPOINT ["java","-Djava.security.edg=file:/dev/./urandom","-jar","./app.jar"]







