
# Kotlin plugin
FROM gradle AS build
COPY protoc.sh /opt/protoc

RUN apt-get -q update && \
  apt-get -y install build-essential protobuf-compiler && \
  rm -r /var/lib/apt/lists/*

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon 

# RUN curl -fsSL -o protoc-gen-grpc-kotlin-1.3.0-jdk8.jar https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.3.0/protoc-gen-grpc-kotlin-1.3.0-jdk8.jar

RUN ./gradlew :compiler:build && \
  ./gradlew :compiler:installDist


# # Vendor some dependencies.
RUN mkdir -p /opt/proto && \
  cd /opt && \
  git clone --depth 1 https://github.com/googleapis/googleapis.git && \
  mv googleapis/google proto/ && \
  rm -rf googleapis

WORKDIR /code
ENTRYPOINT ["/opt/protoc"]
