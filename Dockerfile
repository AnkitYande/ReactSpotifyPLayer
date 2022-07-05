FROM node:14.19.1

WORKDIR /app

COPY package.json .
COPY yarn.lock .

# RUN  useradd -m admin && echo "admin:admin" |  chpasswd
RUN yarn install

COPY . .
EXPOSE 3000

CMD ["yarn", "start"]
 

    