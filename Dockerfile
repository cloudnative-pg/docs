FROM node:lts-alpine@sha256:8996bb5821d62a8fd9bb27c1cb07462f3fdce6e47d640c6a881ead0b064ce216

COPY website /website

WORKDIR /website
RUN npm ci

CMD ["npm", "run", "start", "--", "-h", "0.0.0.0"]
