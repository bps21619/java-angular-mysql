FROM openjdk:11
WORKDIR /java
COPY . /java
RUN mvn install
ENTRYPOINT ["java","-jar", "springboot-crud-api-0.0.1-SNAPSHOT.jar"]
