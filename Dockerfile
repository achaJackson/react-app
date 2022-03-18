#multistep process to run our app
#crating a build phase to bundle our app

FROM node:alpine as builder

WORKDIR "/app"

COPY ./package.json ./

#install all dependencies
RUN npm install

#copy all files to the container /dir
COPY ./ ./

#build the app, returns a /build bundled app
RUN npm run build

#This phase will run the app in production with Nginx server

#pull the nginx server from dockerhub
FROM nginx

#ARG app_dest = "/usr/share/nginx/html"

#copy only the bundled app into the nginx server
COPY --from=builder /app/build /usr/share/nginx/html

#ngnix starts alone so we dont have to run it for the app to run.