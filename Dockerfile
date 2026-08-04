FROM node:lts-alpine@sha256:d32cdf619f63fe0471182d08996dd516c6275bb5fd31ae06e55a570bd9e1ad43

COPY website /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
