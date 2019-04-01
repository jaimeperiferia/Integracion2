#prueba de dockerfile con springboot
WORKDIR /
EXPOSE 9000

FROM maven:3.5.4-jdk-8-alpine 
WORKDIR /
RUN mvn clean test package









