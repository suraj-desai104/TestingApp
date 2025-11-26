# Java 17 base image
FROM openjdk:17-jdk-slim

# Port set karo
ENV PORT=8080

# Jar copy karo container me
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Port expose karo
EXPOSE 8080

# App run karne ka command
ENTRYPOINT ["java", "-jar", "app.jar"]
