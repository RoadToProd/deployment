FROM jenkins/jenkins:2.263.4-lts-slim
USER root
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && usermod -aG docker jenkins
USER jenkins
RUN jenkins-plugin-cli --plugins blueocean:1.24.4
