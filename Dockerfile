FROM openjdk:8-alpine
MAINTAINER AYYAPPA
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/java-web-app-1.0.jar $PROJECT_HOME/java-web-app-1.0.jar
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar" ,"./java-web-application.jar"]
