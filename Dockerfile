FROM docker.io/codewaysa/java:11.0.21_20231020

LABEL image-name="codewaysa/java-dev"

RUN apk add --no-cache git=2.40.1-r0 openjdk11-jdk=11.0.21_p9-r0 && \
    wget -O - https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz |\
        tar xz -C /opt -f - && \
    ln -s /opt/apache-maven-3.9.5/bin/mvn /usr/local/bin/
