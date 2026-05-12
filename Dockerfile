FROM jenkins/jenkins:lts

USER root

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    wget \
    unzip

# Add Docker official GPG key
RUN install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg \
    -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian bookworm stable" \
  > /etc/apt/sources.list.d/docker.list

# Install Docker CLI
RUN apt-get update -qq && \
    apt-get install -y docker-ce-cli

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip && \
    unzip terraform_1.6.6_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.6.6_linux_amd64.zip

# Add jenkins user to docker group
RUN groupadd docker && usermod -aG docker jenkins

USER jenkins