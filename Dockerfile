FROM openjdk:8-alpine
MAINTAINER AYYAPPA
RUN apk update && apk add /bin/sh
RUN mkdir -P /opt/app
ENV PROJECT_HOME /opt/app
COPY target/java-web-application.jar $PROJECT_HOME/java-web-application.jar
WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar" ,"./java-web-application.jar"]
