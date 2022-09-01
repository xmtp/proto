FROM golang:1.18

RUN apt-get -qq update && \
    apt-get -y install protobuf-compiler nodejs npm

COPY protoc.sh /opt/protoc

# Install some plugins.
RUN go install github.com/grpc-ecosystem/protoc-gen-grpc-gateway-ts@latest && npm i -g ts-proto@1.122.0

# Vendor some dependencies.
RUN mkdir -p /opt/proto && \
    cd /opt && \
    git clone --depth 1 https://github.com/googleapis/googleapis.git && \
    mv googleapis/google proto/ && \
    rm -rf googleapis

WORKDIR /code

ENTRYPOINT ["/opt/protoc"]
