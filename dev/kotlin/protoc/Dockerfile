
FROM openjdk:8

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential protobuf-compiler unzip curl && \
  rm -r /var/lib/apt/lists/*

RUN curl -fsSL -o protoc-gen-grpc-kotlin-1.3.0-jdk8.jar https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.3.0/protoc-gen-grpc-kotlin-1.3.0-jdk8.jar

RUN chmod +x protoc-gen-grpc-kotlin-1.3.0-jdk8.jar

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
