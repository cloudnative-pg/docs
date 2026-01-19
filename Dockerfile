FROM node:lts-alpine@sha256:931d7d57f8c1fd0e2179dbff7cc7da4c9dd100998bc2b32afc85142d8efbc213

COPY website /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
