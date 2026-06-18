FROM node:lts-alpine@sha256:156b55f92e98ccd5ef49578a8cea0df4679826564bad1c9d4ef04462b9f0ded6

COPY website /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
