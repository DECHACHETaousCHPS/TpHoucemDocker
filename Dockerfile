FROM tomcat:latest
MAINTAINER Taous

ADD ./target/devOpsDemo-0.0.1-SNAPSHOT.jar  /usr/local/tomcat/webapps/
EXPOSE 8686

CMD [ "catalina.sh", "run" ]
