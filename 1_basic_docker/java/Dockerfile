FROM adoptopenjdk/openjdk11:ubi
# FROM adoptopenjdk/openjdk11:ubi-minimal-jre

WORKDIR /opt/app

COPY target/helloworld-0.0.1.jar app.jar

CMD ["java", "-jar", "app.jar"] 
