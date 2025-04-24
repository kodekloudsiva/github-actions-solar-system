FROM node:18-alpine3.17

WORKDIR /usr/app

COPY ./github-actions-solar-system/package*.json /usr/app/

RUN npm install

COPY ./github-actions-solar-system/ .

# Accept build-time args
ARG MONGO_URI
ARG MONGO_USERNAME
ARG MONGO_PASSWORD

ENV MONGO_URI=$MONGO_URI
ENV MONGO_USERNAME=$MONGO_USERNAME
ENV MONGO_PASSWORD=$MONGO_PASSWORD

EXPOSE 3000

CMD [ "npm", "start" ]