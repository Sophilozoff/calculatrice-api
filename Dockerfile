#Start with an image from openJdk
FROM openjdk:11
#Run the mvn clean install command to generate the war file
RUN mvn clean install

#From tomcat server
FROM tomcat

#Run the war file
COPY ./target/backend-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/