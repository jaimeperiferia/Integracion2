FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD ADD . /usr/src/app
ONBUILD RUN mvn test package
