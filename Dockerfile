# Use an OpenJDK 21 base image
FROM docker.io/library/eclipse-temurin:21-jdk as runtime

# Set the working directory
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY demoapp.jar /app/demoapp.jar

# Expose the application port (adjust if needed)
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "/app/demoapp.jar"]
