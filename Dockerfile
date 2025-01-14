FROM openjdk:11


EXPOSE 8082


ENV NEXUS_USERNAME=admin
ENV NEXUS_PASSWORD=nexus
ENV NEXUS_REPO_URL=http://192.168.57.132:8081/repository/maven-releases/tn/esprit/DevOps_Project/2.0/DevOps_Project-2.0.jar

RUN curl -L -o devops.jar -u $NEXUS_USERNAME:$NEXUS_PASSWORD $NEXUS_REPO_URL


ENTRYPOINT ["java", "-jar", "devops.jar"]
