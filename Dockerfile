FROM openjdk:11.0.3-jdk-slim
RUN mkdir /usr/ms-ead-service-registry
COPY target/service-registry-0.0.1-SNAPSHOT.jar /usr/ms-ead-service-registry/app.jar
WORKDIR /usr/ms-ead-service-registry
EXPOSE 8761
ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar app.jar" ]



