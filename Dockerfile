
# Use an official Java runtime as a parent image
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar from your Gradle build folder to the container
# Based on your previous error, this is the exact path fix:
COPY build/libs/*.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
ENTRYPOINT ["java", "-jar", "/app.jar"]