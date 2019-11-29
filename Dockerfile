#Alpine version of jdk:8
FROM openJdk:8-jre-alpine
#copy FAT jar file
COPY ./target/firstProject-0.0.1-SNAPSHOT.jar /app.jar
#run the application
CMD ["/usr/bin/java","-jar","/app.jar"]