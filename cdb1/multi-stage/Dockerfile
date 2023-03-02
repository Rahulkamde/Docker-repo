FROM ubuntu:latest As build
RUN apt update && apt-get install maven curl git -y
RUN git clone https://github.com/Rahulkamde/student-ui.git
WORKDIR /student-ui
RUN mvn clean package

FROM alpine
RUN apk add openjdk8
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz tomcat.tar.gz
RUN tar -xvf tomcat.tar.gz -C /opt/
COPY --from=build /student-ui/target/**.war /opt/apache-tomcat-9.0.72/webapps/student.war
RUN rm -rf /opt/tomcat.tar.gz
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.72/bin/catalina.sh", "run"]