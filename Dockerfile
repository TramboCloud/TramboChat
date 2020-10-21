FROM node:8.15
RUN mkdir /app
WORKDIR /app
COPY package.json .
RUN npm install
COPY . /app
USER node

ENTRYPOINT npm start
