FROM node:0.10.42
RUN mkdir -p /usr/local/scrumblr
WORKDIR /usr/local/scrumblr

COPY package.json /usr/local/scrumblr/
RUN npm install

COPY . /usr/local/scrumblr

EXPOSE 8080

CMD [ "cd", "/usr/local/scrumblr", "&&" ,"node", "server.js", "--redis", "10.40.0.7:6379" ]