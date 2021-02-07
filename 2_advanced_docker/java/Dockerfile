FROM maven:3-openjdk-11-slim

WORKDIR /opt/app
COPY pom.xml pom.xml
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve


COPY . .

# Runs tests as part of the packaging process
RUN mvn package

CMD ["java", "-jar", "target/helloworld-0.0.1.jar"] 
