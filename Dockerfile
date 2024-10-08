FROM node:latest
WORKDIR /aplicacao
COPY /aplicacao/ /NovaScan/
COPY package*.json ./
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]