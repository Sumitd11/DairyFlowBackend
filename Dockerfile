FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY . .

# Make mvnw executable
RUN chmod +x mvnw

# Build the project
RUN ./mvnw clean package -DskipTests

# Run the app
CMD ["java", "-jar", "target/DairyFlowBackend-0.0.1-SNAPSHOT.jar"]