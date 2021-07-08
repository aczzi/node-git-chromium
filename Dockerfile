FROM node:14.15.0-slim
MAINTAINER "Antoine COZZI" <antoine.cozzi@gmail.com>

RUN apt update && apt install -y wget --no-install-recommends
RUN apt install -y gnupg2
RUN apt install -qqy git
RUN apt install -qqy python python3
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /src/*.deb
RUN yarn global add yarn
