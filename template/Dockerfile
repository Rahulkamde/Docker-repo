FROM ubuntu:latest
RUN apt update -y 
RUN apt install nginx -y
RUN rm -rf /var/www/html/*
RUN apt install unzip -y
<<<<<<< HEAD
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip . 
RUN ls .
Run unzip cycle.zip
RUN mv html/* /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
=======
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip .
RUN ls .
Run unzip cycle.zip
RUN mv /html/* /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
>>>>>>> eebbdef0fa3eaa2bd5d7f4550fef1f034111e9f2
