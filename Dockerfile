# ---------- Stage 1: Build ----------
FROM maven:3.8.7-openjdk-17 AS build

# Set working directory inside container
WORKDIR /app

# Copy all files
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# ---------- Stage 2: Run ----------
FROM openjdk:17-jdk-slim

# Set working directory for runtime
WORKDIR /app

# Copy built JAR from the build stage
COPY --from=build /app/target/order-service-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

