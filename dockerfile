FROM node:0.10.42

EXPOSE 8080

RUN mkdir /usr/local/scrumblr

COPY . /usr/local/scrumblr

RUN cd /usr/local/scrumblr && npm install

CMD ["node", "/usr/local/scrumblr/server.js", "--redis", "10.40.0.7:6379"]