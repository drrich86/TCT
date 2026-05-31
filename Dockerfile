FROM node:20-bookworm

WORKDIR /app

RUN apt-get update && apt-get install -y ca-certificates curl && rm -rf /var/lib/apt/lists/*

COPY index.js .
EXPOSE 8000

CMD ["node", "index.js"]
