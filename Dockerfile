FROM openjdk:18-jdk-alpine
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
#ARG JAR_FILE=demo 2/target/*.jar
#COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]