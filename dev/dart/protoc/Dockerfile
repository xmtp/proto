FROM dart:stable

RUN apt-get update && \
    apt-get install -y protobuf-compiler

COPY protoc.sh /opt/protoc

RUN dart pub global activate protoc_plugin
ENV PATH ${PATH}:/root/.pub-cache/bin

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
