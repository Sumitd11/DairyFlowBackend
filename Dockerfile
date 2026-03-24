FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .

# ✅ Make mvnw executable (IMPORTANT)
RUN chmod +x mvnw

# Build the project
RUN ./mvnw clean package -DskipTests

# Run the app
CMD ["java", "-jar", "target/DairyFlowBackend-0.0.1-SNAPSHOT.jar"]