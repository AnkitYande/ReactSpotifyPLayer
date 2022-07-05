FROM node:14.19.1

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN  useradd -m admin && echo "admin:admin" |  chpasswd
RUN yarn install
RUN mkdir -p node_modules/.cache && chmod -R 777 node_modules/.cache

COPY . .
EXPOSE 3000

CMD ["yarn", "start"]
 

    