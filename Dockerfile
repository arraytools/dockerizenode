FROM node:10.15.3
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install -g pm2
COPY . ./
EXPOSE 3000
CMD npm run start
