FROM java:8
ADD docker-test-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 6666
ENTRYPOINT ["java","-jar","/app.jar"]