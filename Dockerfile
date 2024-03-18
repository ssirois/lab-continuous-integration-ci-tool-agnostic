FROM debian:bookworm-slim

RUN apt-get update && \
  apt-get install -y -q --no-install-recommends \
    openjdk-17-jdk \
    maven && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
