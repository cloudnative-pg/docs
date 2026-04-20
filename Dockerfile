FROM node:lts-alpine@sha256:d1b3b4da11eefd5941e7f0b9cf17783fc99d9c6fc34884a665f40a06dbdfc94f

COPY website /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
