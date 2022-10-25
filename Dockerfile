FROM maven:3.3-jdk-8

WORKDIR /java
COPY . /java
RUN mvn clean install
EXPOSE 8080
ENTRYPOINT ["java","-jar", "springboot-crud-api-0.0.1-SNAPSHOT.jar"]
