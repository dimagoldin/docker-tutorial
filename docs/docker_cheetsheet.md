# Docker CLI Cheetsheet

### Basic info on running containers
**View running containers**
```properties
docker ps
```

**View running and stopped containers**
```properties
docker ps -a
```

**View resources used by running containers**
```properties
docker stats
```

**View logs of a container**
```properties
docker logs <container_id or container_name> -f
```
```-f```

 allows to follow container logs (view outputted logs continuously)

**View images available on the host**
```properties
docker images
```

**Running a container based on an image:**
```properties
docker run -d --name service_a --port 8080:80 my_service:0.0.1
```
```--name <a name>```

Provides a name for the container, so you can refer to it not only by a generated ID.

```--port <host_port>:<container_port>```

Forwards local port <host_port> to a port inside the container <container_port>, makes the container network accessible to you on localhost:<host_port>, and traffic will be forwarded to <container_ip>:<container_port>.

```--rm```

When the container stops, everything to do with the container is cleaned. The container is automatically removed along with its file-system.
When developing, on one hand, this will make it harder to debug errors as no logs are saved and the file system of the container cant be viewed, on the other hand, when creating many containers, this removes unneeded disk size and makes sure ports arent reserved for the containers that stopped.

```-d```

Running the container in detached mode, not being tied to the terminal session and continues to run even if the terminal stops. Without -d, the container runs as long as the terminal is open and you do not press ctrl+c. 


**Stopping a running container:**
```properties
docker stop <container_id or container_name>
```

**Removing a stopped container**
```properties
docker rm <container_id or container_name>
```

**Deleting an image**
```properties
docker rmi <image_name>:<image_tag>
```

**Stopping all running containers**
```properties
docker stop $(docker ps -aq)
```
**Removing all stopped containers**
```properties
docker rm $(docker ps -aq)
```

**Connecting to a terminal of a running container**
```properties
docker exec -it <container_id or container_name> bash
```
> Not all images have bash installed, you can use **sh** as an alternative

