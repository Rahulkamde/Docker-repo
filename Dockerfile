# FROM ubuntu:latest
# RUN  apt update -y
# RUN  apt install nginx -y
# RUN  rm -rf /var/www/html/*
# # RUN  touch index.html
# RUN  echo "<h1> Welcome to cloudblitz, Nagpur </h1>" > index.html
# RUN  mv index.html /var/www/html/
# EXPOSE 80
# CMD  ["nginx", "-g", "daemon off;"]





FROM ubuntu:latest
RUN apt update -y 
RUN apt install openjdk-11-jre-headless -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz /opt/
RUN tar -xvf /opt/apache-tomcat-9.0.71.tar.gz -C /opt/
RUN ls /opt/
ADD https://tomcat-war-jar-new.s3.amazonaws.com/onlinebookstore.war /opt/apache-tomcat-9.0.71/webapps/
# RUN ./opt/apache-tomcat-9.0.71/bin/startup.sh
EXPOSE 8080
CMD ./opt/apche-tomcat-9.0.71/bin/startup.sh start; sleep inf






















