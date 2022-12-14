
FROM openjdk:8

COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential protobuf-compiler unzip curl && \
  rm -r /var/lib/apt/lists/*

RUN curl -fsSL -o protoc-gen-grpc-kotlin-1.3.0-jdk8.jar https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.3.0/protoc-gen-grpc-kotlin-1.3.0-jdk8.jar

# FROM openjdk:8 as kotlin-plugin

# ENV KOTLIN_PLUGIN_VERSION "0.7.2"

# RUN apt-get update && \
#     apt-get -y install curl zip
# RUN curl -LO https://github.com/streem/pbandk/archive/v$KOTLIN_PLUGIN_VERSION.zip && unzip -o v$KOTLIN_PLUGIN_VERSION.zip

# RUN cd pbandk-$KOTLIN_PLUGIN_VERSION && ./gradlew :protoc-gen-kotlin:protoc-gen-kotlin-jvm:assembleDist
# RUN unzip pbandk-$KOTLIN_PLUGIN_VERSION/protoc-gen-kotlin/protoc-gen-kotlin-jvm/build/distributions/protoc-gen-kotlin-$KOTLIN_PLUGIN_VERSION.zip

# RUN mkdir -p ./protoc-gen-kotlin/bin/ ./protoc-gen-kotlin/lib/
# RUN cp -r ./protoc-gen-kotlin-$KOTLIN_PLUGIN_VERSION/bin/ ./protoc-gen-kotlin/
# RUN cp -r ./protoc-gen-kotlin-$KOTLIN_PLUGIN_VERSION/lib/ ./protoc-gen-kotlin/

# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
