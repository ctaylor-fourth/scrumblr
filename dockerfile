FROM node:0.10.42

EXPOSE 8080

RUN mkdir /usr/local/scrumblr

COPY . /usr/local/scrumblr