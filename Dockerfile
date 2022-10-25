FROM ubuntu
RUN apt install -y maven
RUN apt install -y openjdk-11-jdk
WORKDIR /java
COPY . /java
RUN mvn clean install
EXPOSE 8080
ENTRYPOINT ["java","-jar", "springboot-crud-api-0.0.1-SNAPSHOT.jar"]
