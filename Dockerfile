FROM eclipse-temurin:11.0.23_9-jdk-alpine

WORKDIR /app

COPY . /app

RUN javac sample.java

CMD [ "java","sample" ]
