# # multistage Docker files
# FROM ubuntu:latest As build
# RUN apt update -y && apt install maven -y && apt install git -y
# RUN git clone https://github.com/Rahulkamde/NodeJsApp.git
# WORKDIR /NodeJsApp
# RUN mvn clean package



# FROM alpine
# RUN  apk add openjdk8
# ADD https://nodejs.org/dist/v18.13.0/node-v18.13.0.tar.gz node.tar.gz
# RUN tar -xzvf node.tar.gz -C /opt/
# COPY --from=build /NodeJsApp/target/**.war /opt/



# Build Stage 1
# This build created a staging docker image
#
FROM node:10.15.2-alpine AS appbuild
WORKDIR /usr/src/app
COPY package.json ./
COPY .babelrc ./
RUN npm install
COPY ./src ./src
RUN npm run build
# Build Stage 2
# This build takes the production build from staging build
#
FROM node:10.15.2-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY .babelrc ./
RUN npm install
COPY --from=appbuild /usr/src/app/dist ./dist
EXPOSE 4002
CMD npm start