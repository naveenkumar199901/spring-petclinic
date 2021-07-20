FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE 2222

#ADD application.properties /opt/
#ADD blankFile  plugins/*.jar /opt/plugins/
#ADD blankFile props/* /opt/ 
#ADD start.sh /opt/

#EXPOSE 8080

#CMD ["/opt/start.sh", "run"]
