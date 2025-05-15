FROM node:22-alpine

WORKDIR /app

# let it be. let it be. let it be. let it be.
COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
