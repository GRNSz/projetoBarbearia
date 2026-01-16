# Dockerfile para Desenvolvimento (NestJS)

FROM node:20-alpine

WORKDIR /app

# Copia os arquivos de dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o resto do código
COPY . .

# Expõe a porta que o Nest usa (Padrão é 3000)
EXPOSE 3000

# Comando para rodar em modo de desenvolvimento (com Hot Reload)
CMD ["npm", "run", "start:dev"]