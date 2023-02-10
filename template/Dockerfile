FROM cycle:template
RUN apt update -y 
RUN apt install nginx -y
RUN rm -rf /var/www/html/*
RUN apt install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip 
RUN ls .
Run unzip cycle.zip
RUN mv cycle.zip/* /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
