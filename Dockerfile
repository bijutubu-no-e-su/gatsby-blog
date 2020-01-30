FROM node:alpine
EXPOSE 8000 9929
RUN mkdir /code
WORKDIR /code
ENV NODE_ENV=development
RUN \
  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing --repository http://dl-3.alpinelinux.org/alpine/edge/main && \
  rm -fR /var/cache/apk/*
RUN npm install -g gatsby-cli
ENTRYPOINT [ "sh", "entrypoint.sh" ]