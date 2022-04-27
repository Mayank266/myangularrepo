FROM node:latest as node
WORKDIR /app
COPY ./firstproject .
#RUN npm install -g npm@8.6.0
RUN npm install
RUN npm run build --prod


FROM nginx:alpine
COPY --from=node /app/dist/firstproject /usr/share/nginx/html


