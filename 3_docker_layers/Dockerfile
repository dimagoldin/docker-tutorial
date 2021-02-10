FROM alpine:latest

WORKDIR /code

COPY ["loop.sh", "./"]

ARG n=100

RUN ./loop.sh $n > manifest.txt
RUN rm manifest.txt
# RUN ./loop.sh $n > manifest.txt && rm manifest.txt
