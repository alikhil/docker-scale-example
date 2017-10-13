FROM node:8.4

RUN mkdir /app
WORKDIR /app
ADD ./package.json .
RUN npm install --silent
RUN npm install -g nodemon --silent

# ADD ./index.js .
# EXPOSE 12228
CMD ["node", "index.js"]