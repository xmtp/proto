FROM openjdk:20-jdk-bullseye as build

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential unzip curl && \
  rm -r /var/lib/apt/lists/*

ENV PROTOBUF_VERSION "21.12"

RUN curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOBUF_VERSION/protobuf-all-$PROTOBUF_VERSION.tar.gz
RUN tar xzf protobuf-all-$PROTOBUF_VERSION.tar.gz
RUN cd protobuf-$PROTOBUF_VERSION && \
  ./configure --disable-shared && \
  make -j 20 && \
  make install

# Java gRPC plugin
ARG JAVA_GRPC_VERSION=1.45.1
ARG JAVA_PLATFORM=linux-x86_64
ARG JAVA_GRPC_URL="https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/$JAVA_GRPC_VERSION/protoc-gen-grpc-java-$JAVA_GRPC_VERSION-$JAVA_PLATFORM.exe"

RUN echo "Installing protoc-gen-grpc-java-$JAVA_GRPC_VERSION-$JAVA_PLATFORM" && \
    wget --quiet "$JAVA_GRPC_URL" -O /bin/protoc-gen-grpc-java
RUN chmod +x /bin/protoc-gen-grpc-java

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
