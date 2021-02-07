# Base image to start from
FROM adoptopenjdk/openjdk11:ubi
# A smaller base image, without extra OS stuff that you might not need
# FROM adoptopenjdk/openjdk11:ubi-minimal-jre

# CD to a folder which will be the main folder
WORKDIR /app

# Copy local jar into the image
COPY target/helloworld-0.0.1.jar app.jar


# Define a command line that will run when someone runs the docker
CMD ["java", "-jar", "app.jar"] 
