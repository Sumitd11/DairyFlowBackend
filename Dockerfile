FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .

# Build the app
RUN ./mvnw clean package -DskipTests

# Run the app
CMD ["java", "-jar", "target/DairyFlowBackend-0.0.1-SNAPSHOT.jar"]