FROM openjdk:alpine
MAINTAINER sathish vasu 
VOLUME /tmp
EXPOSE 8082
ADD ./target/utilityservice-1.0-SNAPSHOT.jar utilityservice-1.0-SNAPSHOT.jar
RUN sh -c 'touch /utilityservice-1.0-SNAPSHOT.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","utilityservice-1.0-SNAPSHOT.jar"]


