FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install git maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR boxfuse-sample-java-war-hello/
RUN mvn package
RUN mkdir /war
VOLUME /tmp/war
RUN cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /war