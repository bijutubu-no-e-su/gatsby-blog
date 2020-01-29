FROM node:alpine
EXPOSE 8000 9929
ENV NODE_ENV=development
RUN npm install -g gatsby-cli
RUN apk add --no-cache git
RUN mkdir /code
WORKDIR /code
