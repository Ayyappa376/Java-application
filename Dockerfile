FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/java-web-app-1.0.jar /usr/local/tomcat/webapps/java-web-app-1.0.jar
