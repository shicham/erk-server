FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /data/erk-server-0.0.1.jar
EXPOSE 8700
ENTRYPOINT ["java","-jar","/data/erk-server-0.0.1.jar"]
