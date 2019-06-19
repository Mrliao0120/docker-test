FROM movies/liaohongbin:latest as builder
WORKDIR /com/liao/
COPY ./ /com/liao/
RUN mvn clean -Dmaven.test.skip=true package


FROM java:8-jre-alpine
COPY --from=builder /com/liao/target/docker-test-0.0.1-SNAPSHOT.jar /app/jar/app.jar
