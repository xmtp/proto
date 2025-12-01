FROM eclipse-temurin:21-jdk-jammy AS build

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
    apt-get -y install build-essential unzip curl git && \
    rm -r /var/lib/apt/lists/*

# Latest version on protoc so that it has Kotlin
ARG JAVA_PLATFORM=linux-x86_64
ARG PROTOC_VERSION=21.12

RUN curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-$JAVA_PLATFORM.zip && \
    unzip -o protoc-$PROTOC_VERSION-$JAVA_PLATFORM.zip -d /usr/local bin/protoc && \
    unzip -o protoc-$PROTOC_VERSION-$JAVA_PLATFORM.zip -d /usr/local include/* && \
    rm -rf protoc-$PROTOC_VERSION-$JAVA_PLATFORM.zip

# Kotlin gRPC plugin
ARG KOTLIN_GRPC_VERSION=1.3.0
ARG KOTLIN_GRPC_URL=https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/$KOTLIN_GRPC_VERSION/protoc-gen-grpc-kotlin-$KOTLIN_GRPC_VERSION-jdk8.jar

RUN mkdir -p /opt/protoc-plugins && \
    curl -fsSL -o /opt/protoc-plugins/protoc-gen-grpc-kotlin-$KOTLIN_GRPC_VERSION-jdk8.jar $KOTLIN_GRPC_URL && \
    chmod +x /opt/protoc-plugins/protoc-gen-grpc-kotlin-$KOTLIN_GRPC_VERSION-jdk8.jar

# Java gRPC plugin
ARG JAVA_GRPC_VERSION=1.45.1
ARG JAVA_GRPC_URL=https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/$JAVA_GRPC_VERSION/protoc-gen-grpc-java-$JAVA_GRPC_VERSION-$JAVA_PLATFORM.exe

RUN curl -fsSL -o /bin/protoc-gen-grpc-java $JAVA_GRPC_URL
RUN chmod +x /bin/protoc-gen-grpc-java

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
    cd /opt && \
    git clone --depth 1 https://github.com/googleapis/googleapis.git && \
    mv googleapis/google proto/ && \
    rm -rf googleapis

RUN mkdir -p /opt/proto && \
    cd /opt && \
    git clone --depth 1 https://github.com/grpc-ecosystem/grpc-gateway.git && \
    mv grpc-gateway/protoc-gen-openapiv2 proto/ && \
    rm -rf grpc-gateway

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
