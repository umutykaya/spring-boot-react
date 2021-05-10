FROM openjdk:16-jdk-alpine

ARG JAR_FILE=target/*.jar
# ARG KEY_FILE=target/classes/*.p12

COPY ${JAR_FILE} app.jar
# COPY ${KEY_FILE} keystore.p12
EXPOSE 8080
# ENV JAVA_OPTS='-Djava.awt.headless=true'
ENTRYPOINT ["java","-jar","app.jar"]