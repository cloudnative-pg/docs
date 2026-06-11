FROM node:lts-alpine@sha256:fb71d01345f11b708a3553c66e7c74074f2d506400ea81973343d915cb64eef0

COPY website /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
