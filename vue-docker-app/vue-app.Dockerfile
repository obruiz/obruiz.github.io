FROM node:16-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install -g @vue/cli
RUN npm install
COPY . .
CMD ["npm", "run", "serve"]