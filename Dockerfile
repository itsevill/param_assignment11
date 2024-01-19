FROM node:21-alpine AS development
ENV NODE_ENV development
WORKDIR /param_param_site
COPY package.json .
RUN yarn install
COPY . .
EXPOSE 7775
CMD [ "yarn","start" ]