FROM hence/node:latest

WORKDIR /app

ONBUILD COPY package.json /app/
ONBUILD RUN npm install
ONBUILD COPY . /app

CMD ["npm", "start"]
