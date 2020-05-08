FROM adoptopenjdk/openjdk8:ubi
COPY target/Calculator-0.0.1-SNAPSHOT.jar  /home/Calculator-0.0.1-SNAPSHOT.jar
CMD ["java","-cp","/home/Calculator-0.0.1-SNAPSHOT.jar","Calculator"]
