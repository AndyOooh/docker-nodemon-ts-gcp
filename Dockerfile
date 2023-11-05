# Stage 1: Common Base
FROM node:16 AS base

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install

# Stage 2: Development
FROM base AS development
COPY . .
CMD ["yarn", "dev"]

# Stage 3: Production Build
FROM base AS builder
COPY . .
RUN yarn build

# Stage 4: Production
FROM node:16 AS production
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY package.json yarn.lock ./
RUN yarn install --production
CMD ["node", "dist/server.js"]

