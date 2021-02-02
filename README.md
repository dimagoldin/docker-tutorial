# Docker Tutorial

### General Explanation
---
There is a Makefile in the root of the project. Some of its commands call commands of other Makefiles inside each of the chapters. (sub-makefiles)

In general ```make clean``` and ```make build``` are the most important commands, wether in the root Makefile or sub-makefiles (in the various chapters)

1. ```make build```
    - This copies the code of the relevant service, builds the image. in java specifically this builds the jar as well for chapter 1 specifically.
1. ```make clean```
    - This cleans all

### Chapters:
___

#### Chapter 1 - Basic Docker
___
> Shows a basic Dockerfile for java and nodejs microservices and the build process. Shows a simple way to reduce image size

**Steps**:
1. ```cd 1_basic_docker```
1. ```make build```
1. ```make run``` - runs the built docker image which outputs "hello world"
1. ```make clean``` - removes all junk created for this chapter


#### Chapter 2 -
> Shows how to use docker to build your code as well as test it

#### Chapter 3 -
> Introduces the concept Multi-Stage docker

#### Chapter 4 -
> Optimizing your dockerfile to reduce size even more and remove unneeded code

#### Chapter 5 -
> Debugging inside docker

#### Chapter 6 -
> docker-compose overview

#### Chapter 7 - 
> docker-compose for development

#### Chapter 8 - 
> CMD vs ENTRYPOINT 

#### Chapter 9 -
> Maximizing reusability
___
# Prerequisites
1. Ubuntu
1. make installed
1. For chapter 1 specifically you need JDK 11 installed, 
