# 1️⃣ Build the JAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /build
COPY . .
RUN mvn -e -B -DskipTests clean package

# 2️⃣ Run the JAR using JDK
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /build/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
