FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /data/app.jar
EXPOSE 8700
ENTRYPOINT ["java","-jar","/data/app.jar"]
