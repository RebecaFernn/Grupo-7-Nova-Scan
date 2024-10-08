FROM node:latest

# Defina o diretório de trabalho
WORKDIR /aplicacao

# Copie apenas o package.json e package-lock.json (se existir)
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos da aplicação
COPY . .

# Exponha a porta
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["npm", "start"]