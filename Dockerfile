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









