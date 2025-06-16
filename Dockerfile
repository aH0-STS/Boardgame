# Use OpenJDK 17 on Alpine Linux
FROM openjdk:17-alpine

# Set environment variable for app directory
ENV APP_HOME=/usr/src/app

# Create app directory
WORKDIR $APP_HOME

# Copy the JAR file into the image
COPY target/database_service_project-0.0.7-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
