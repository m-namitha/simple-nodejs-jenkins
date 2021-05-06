FROM node:12.18.3
 
WORKDIR /app

RUN npm install
 
COPY . .
 
CMD [ "node", "index.js" ]