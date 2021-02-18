# Overview

We will talk about **Docker**, a little bit of its internal and alot of hands-on examples on how to write, create, manage, debug and optimize your images.
With a solid basis, we will add **docker-compose** to the fun and will learn how it helps us on a day to day basis and help your development become easier, funner and closer to production. It will also give you the tools to prototype faster than ever and unravel another piece of the big picture.


# Docker
Lets TL;DR the hack out of the overview (google for longer overviews and comparisons)
Docker is similar to VMs but smaller, faster, requires less resources, has version control built in, provides great reusability , works on any linux since 2007, very portable, good security, so popular most startups and enterprises use it for dev and prod, simplifies  deployment, helps developers work faster and smarter, removes some of the daily complexities.

# Why should i use it?
1. Everyone uses it
1. It’s one of the most popular technologies
1. It's not a trend, it's here to stay
1. It’s the one of the best lines to put on your resume
1. It will make your life a little easier
1. It’s awesome, and you use it, by the transitive property, you're awesome.

# Most important Docker concepts
- Dockerfile - A recipe that defines how to build the image and run your code
- Docker Image - An Image built according to a recipe (Dockefile)
- Container - When running an Image, a container is created. Any number of containers can be created out of the image. All identical, all with unique identifiers.
