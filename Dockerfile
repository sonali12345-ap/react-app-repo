FROM node:18-alpine

WORKDIR /app

COPY pakage*.json ./

RUN npm install 

COPY . . 

CMD ["npm", "start"]
