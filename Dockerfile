FROM node:18-alpine3.17

WORKDIR /usr/app

COPY ./github-actions-solar-system/package*.json /usr/app/

RUN npm install

COPY ./github-actions-solar-system/ .

EXPOSE 3000

CMD [ "npm", "start" ]