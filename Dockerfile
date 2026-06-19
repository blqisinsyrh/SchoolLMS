FROM tomcat:9.0-jdk21-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/*
COPY dist/SchoolLMS.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]