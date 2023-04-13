FROM swift:5.7

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential protobuf-compiler unzip curl && \
  rm -r /var/lib/apt/lists/*

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
