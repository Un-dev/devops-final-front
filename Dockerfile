FROM node:dubnium

WORKDIR /app

COPY package*.json ./
RUN yarn install
COPY . .

EXPOSE 8080
CMD [ "yarn", "serve" ]