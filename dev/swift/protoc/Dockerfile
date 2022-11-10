FROM swift:5.7

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install protobuf-compiler unzip curl && \
  rm -r /var/lib/apt/lists/*

RUN curl -L -o plugin.zip https://github.com/apple/swift-protobuf/archive/refs/tags/1.20.3.zip && \
  unzip plugin.zip -d ./plugin && \
  (cd plugin/swift-protobuf-1.20.3 && swift build --verbose -c release) && \
  cp /plugin/swift-protobuf-1.20.3/.build/release/protoc-gen-swift /usr/local/bin/protoc-gen-swift && \
  rm -rf plugin.zip

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
