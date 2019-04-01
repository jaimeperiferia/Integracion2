

# install git
FROM debian as intermediate
RUN apt-get update \
    apt-get upgrade \
    apt-get install git
RUN  git config --global url."https://".insteadOf git:/

FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
