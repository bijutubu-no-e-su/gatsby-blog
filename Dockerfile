FROM node:alpine
EXPOSE 8000 9929
RUN mkdir /my-site
WORKDIR /my-site
ENV NODE_ENV=development
RUN \
  apk update &&  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing --repository http://dl-3.alpinelinux.org/alpine/edge/main
RUN npm install -g gatsby-cli
ENTRYPOINT [ "sh", "/my-site/entrypoint.sh" ]
