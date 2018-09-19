FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --no-audit
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
