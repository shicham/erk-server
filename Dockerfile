 
# Maven build container 
FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER sass.hicham@gmail.com
#expose port 8080
EXPOSE 8700

#default command
CMD java -jar /data/*.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/erk-server-0.0.1.jar /data/erk-server-0.0.1.jar
