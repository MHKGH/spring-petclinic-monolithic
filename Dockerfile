# Step 1: Use an official Java Runtime as a base image
FROM eclipse-temurin:17-jre-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the artifact built by Maven into the container
# This looks into the 'target' folder created by your './mvnw package' step
COPY target/*.jar app.jar

# Step 4: Expose the port the app runs on (default is 8080)
EXPOSE 8080

# Step 5: Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]