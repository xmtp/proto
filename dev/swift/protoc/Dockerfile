FROM swift:5.7

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential protobuf-compiler unzip curl && \
  rm -r /var/lib/apt/lists/*

# Download and install grpc-swift
RUN curl -L -o plugin.zip https://github.com/grpc/grpc-swift/archive/refs/tags/1.13.0.zip && \
  unzip plugin.zip -d ./plugin && \
  cd plugin/grpc-swift-1.13.0/ && \
  make plugins && \
  cp ./protoc-gen-swift /usr/local/bin/protoc-gen-swift && \
  cp ./protoc-gen-grpc-swift /usr/local/bin/protoc-gen-grpc-swift && \
  rm -rf plugin.zip plugin

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
