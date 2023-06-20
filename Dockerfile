FROM node:18-slim
WORKDIR /app

RUN apt-get update && apt-get install -y \
  git \
  curl \
  build-essential \
  libgtk2.0 \
  libnss3-dev \
  libatk-bridge2.0-0 \
  libdrm-dev \
  libxkbcommon-dev \
  libgbm-dev \
  libasound-dev \
  fonts-noto-cjk-extra \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install