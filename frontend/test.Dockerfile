# Frontend Test Image
FROM node:22.0-slim AS frontend-test

WORKDIR /app

RUN npm install -g nx
