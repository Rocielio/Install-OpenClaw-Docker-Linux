FROM ubuntu:22.04

# Evita prompts interativos
ENV DEBIAN_FRONTEND=noninteractive
# Aumentar o tamanho da memoria 
ENV NODE_OPTIONS="--max-old-space-size=4096"

# Atualiza e instala dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    ca-certificates \
    git \
 && rm -rf /var/lib/apt/lists/*

# Diretório de trabalho
WORKDIR /app

# Expor a porta da Web UI (ajuste se necessário)
EXPOSE 18789

# Mantém o container rodando
CMD ["bash"]
