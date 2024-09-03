# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Build the application
RUN ./mvnw clean install

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/movies-0.0.1-SNAPSHOT.jar"]