# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Add a label (optional)
LABEL maintainer="yourname@example.com"

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/order-service-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 9090

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]

