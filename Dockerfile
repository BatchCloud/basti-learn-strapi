FROM strapi/base

WORKDIR /srv/app

COPY ./package.json ./

RUN yarn install

COPY . .



RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
