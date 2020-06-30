FROM adoptopenjdk:8u252-b09-jdk-hotspot

LABEL maintainer="Tedy Tri Saputro <tedy.saputro@nostratech.com>"

LABEL version="1.0"

RUN groupadd -g 61000 nostratech

RUN useradd -g 61000 -l -M -s /bin/false -u 61000 developer

CMD ["java", "-version"]

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]