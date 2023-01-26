FROM ubuntu:latest
RUN  apt update -y
RUN  apt install nginx -y
RUN  rm -rf /var/www/html/*
# RUN  touch index.html
RUN  echo "<h1> Welcome to cloudblitz, Nagpur </h1>" > index.html
RUN  mv index.html /var/www/html/
EXPOSE 80
CMD  ["nginx", "-g", "daemon off;"]