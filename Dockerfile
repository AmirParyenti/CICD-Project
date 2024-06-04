# Dockerfile that produces a Jenkins image with Docker commands

# Use the original jenkins image
FROM jenkins/jenkins:lts

# Switch user to root to get root permissions
USER root

# Install Docker CLI in the container
RUN apt update && curl -fsSL https://get.docker.com | sh

# Add your user to the Docker group
RUN usermod -aG docker jenkins

USER jenkins
