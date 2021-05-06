FROM node:12.18.3
 
COPY index.js /app/index.js

EXPOSE 80

CMD node /app/index.js
