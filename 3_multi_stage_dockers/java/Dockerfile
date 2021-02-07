FROM maven:3-openjdk-11-slim as builder

WORKDIR /opt/app
COPY pom.xml pom.xml
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve

COPY . .

RUN mvn package
RUN cp target/helloworld-0.0.1.jar app.jar


# Actual Docker
FROM adoptopenjdk/openjdk11:ubi-minimal-jre

WORKDIR /opt/app

COPY --from=builder /opt/app/app.jar app.jar

CMD ["java", "-jar", "app.jar"] 
