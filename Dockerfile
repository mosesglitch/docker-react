FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY package*.json
ENV API_URL=http://api.myapp.com/
COPY . .
EXPOSE 3000
RUN addgroup paps && adduser -S -G paps paps
RUN groups paps
RUN echo 'I know what im doing how about you"
USER paps
# CMD node app.js