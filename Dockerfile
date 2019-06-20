#FROM registry.cn-hangzhou.aliyuncs.com/movies/liaohongbin:latest as builder
#WORKDIR /app/liao/
#COPY ./ /app/liao/
#RUN mvn clean -Dmaven.test.skip=true package
#
#
#FROM java:8
#COPY --from=builder /app/liao/target/docker-test-0.0.1-SNAPSHOT.jar /app/jar/app.jar
#
FROM registry.cn-hangzhou.aliyuncs.com/movies/liaohongbin:latest as builder
FROM  maven
WORKDIR /app/liao/
COPY ./ /app/liao/
RUN mvn clean -Dmaven.test.skip=true package

FROM java:8
COPY --from=builder  /app/liao//target/docker-test-0.0.1-SNAPSHOT.jar  /app/jar/app.jar