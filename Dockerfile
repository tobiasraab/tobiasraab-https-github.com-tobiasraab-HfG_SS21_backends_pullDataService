FROM node:16

LABEL description="This is my test Dockerfile"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# expose the port that is used in express
EXPOSE 8080

CMD [ "node", "index.js" ]