FROM codewaysa/java:11.0.19_20230713

LABEL image-name="codewaysa/java-dev"

RUN apk add --no-cache git=2.40.1-r0 openjdk11-jdk=11.0.19_p7-r1 && \
    wget -O - https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz |\
        tar xz -C /opt -f - && \
    ln -s /opt/apache-maven-3.9.3/bin/mvn /usr/local/bin/
