FROM codewaysa/java:11.0.18_20230315

LABEL image-name="codewaysa/java-dev"

RUN apk add --no-cache git=2.38.4-r1 openjdk11-jdk=11.0.18_p10-r0 && \
    wget -O - https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz |\
        tar xz -C /opt -f - && \
    ln -s /opt/apache-maven-3.9.3/bin/mvn /usr/local/bin/
