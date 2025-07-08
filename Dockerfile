FROM node:22-alpine

# Instalar n8n globalmente
RUN npm install -g n8n

# Crear directorio de trabajo
WORKDIR /home/node

# Configurar variables de entorno
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Exponer puerto
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n", "start"]
