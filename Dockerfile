FROM openjdk:8-jre-alpine
MAINTAINER sathish vasu 
VOLUME /tmp
EXPOSE 8082

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.utilityservice.api.UtilityapiApplication"]