FROM --platform=linux/amd64 node:lts-alpine3.19 as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM --platform=linux/amd64 nginx:stable-alpine3.17-slim
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

