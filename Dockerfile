FROM node:lts-trixie-slim

RUN apt update && \
    apt install -y git && \
    git clone https://github.com/cloudnative-pg/docs /website

WORKDIR /website
RUN yarn

CMD ["yarn", "start", "-h", "0.0.0.0"]
