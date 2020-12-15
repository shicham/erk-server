FROM openjdk:latest
ARG JAR_FILE=target/erk-server-0.0.1.jar
COPY ${JAR_FILE} data/erk-server-0.0.1.jar
EXPOSE 8700
ENTRYPOINT ["java","-jar","data/erk-server-0.0.1.jar"]
