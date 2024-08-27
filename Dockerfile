# Use a base image with JDK
FROM openjdk:17-jdk-alpine


# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/student-microservice-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Expose the port the application runs on
EXPOSE 9010

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]