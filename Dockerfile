FROM n8nio/n8n:latest

# Configurar variables de entorno
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Exponer puerto
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n", "start"]
