#!/usr/bin/env sh
set -eu

# Prefer the plugin binary baked into the Docker image (added in the new Dockerfile),
# but fall back to a jar that sits next to this script for local/manual use.
if [ -x /bin/protoc-gen-grpc-kotlin ]; then
  exec /bin/protoc-gen-grpc-kotlin "$@"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"
LOCAL_JAR="$SCRIPT_DIR/protoc-gen-grpc-kotlin-1.3.0-jdk8.jar"
CONTAINER_JAR="/opt/protoc-plugins/protoc-gen-grpc-kotlin-1.3.0-jdk8.jar"

if [ -f "$LOCAL_JAR" ]; then
  exec java -jar "$LOCAL_JAR" "$@"
elif [ -f "$CONTAINER_JAR" ]; then
  exec java -jar "$CONTAINER_JAR" "$@"
else
  echo "Unable to find protoc-gen-grpc-kotlin jar" >&2
  echo "Looked for $LOCAL_JAR and $CONTAINER_JAR" >&2
  exit 1
fi
