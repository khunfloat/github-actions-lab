FROM node:22-alpine

WORKDIR /app

# let it be. let it be. let it be. let it be.
COPY package*.json ./
RUN npm install --production

# copy
COPY . .

# expose
EXPOSE 3000

# cmd

CMD ["npm", "start"]
