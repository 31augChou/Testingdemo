FROM ubuntu:latest
LABEL authors="User"

ENTRYPOINT ["java", "-jar", "/app.jar"]