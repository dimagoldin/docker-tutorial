FROM adoptopenjdk/openjdk11:ubi

WORKDIR /opt/app

COPY target/helloworld-0.0.1.jar /app.jar

CMD ["java", "-jar", "/app.jar"]