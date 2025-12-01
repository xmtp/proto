FROM golang:1.25.3

RUN apt-get -qq update && \
    apt-get -y install protobuf-compiler nodejs npm

COPY protoc.sh /opt/protoc

# Install some plugins.
RUN go install github.com/grpc-ecosystem/protoc-gen-grpc-gateway-ts@latest && npm i -g ts-proto@1.181.2

# Vendor some dependencies.
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
