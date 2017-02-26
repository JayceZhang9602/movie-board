FROM node:boron

MAINTAINER Henry Li <henry1943@163.com>

# creat workdir
RUN mkdir -p /usr/projects/movie-board
WORKDIR /usr/projects/movie-board

# Install dependencies
COPY package.json /usr/projects/movie-board
RUN npm install

# copy other codes and resources
COPY . /usr/projects/movie-board

EXPOSE 8080
# ENTRYPOINT diff CMD CDM can be overrided
CMD [ "npm", "start" ]