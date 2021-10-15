FROM openjdk:11.0
VOLUME /tmp
EXPOSE 8080
ADD /app/target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
