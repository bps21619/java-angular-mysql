FROM maven:3.3-jdk-8
RUN sudo apt install -y maven
WORKDIR /java
COPY . /java
RUN mvn install
ENTRYPOINT ["java","-jar", "springboot-crud-api-0.0.1-SNAPSHOT.jar"]
