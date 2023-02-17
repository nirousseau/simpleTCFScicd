FROM jenkins/agent:latest-jdk17

ENV PATH="$PATH:/home/jenkins/.local/bin"
ENV M2_HOME="/home/jenkins/.m2"

RUN mkdir -p ~/.local/bin \
    && mkdir -p ~/.m2 \
    # Maven
    && curl -L https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz --output maven.tgz \
    && tar xzvf maven.tgz \
    && mv apache-maven-*/* ~/.local/ \
    && rm -rf apache-maven-*/ maven.tgz \
    # Docker
    && curl -L https://download.docker.com/linux/static/stable/x86_64/docker-23.0.0.tgz --output docker.tgz \
    && tar xzvf docker.tgz \
    && mv docker/* ~/.local/bin/ \
    && rm -rf docker/ docker.tgz
