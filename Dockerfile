FROM openjdk:11.0.11-jdk-slim
EXPOSE 8082
ARG JAR_FILE=mall-demo/target/*.jar
LABEL authors="huruipeng"
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]