# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy jar file into the image
COPY target/vprofileapp.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
