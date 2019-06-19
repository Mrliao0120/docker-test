FROM java:8
VOLUME /tmp
RUN mvn clean -Dmaven.test.skip=true package
ADD docker-test-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 6666
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]