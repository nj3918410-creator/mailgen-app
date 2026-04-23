#!/bin/sh
# Gradle Wrapper - Auto-downloads Gradle if needed
set -e

APP_HOME="$(cd "$(dirname "$0")" && pwd)"
WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
WRAPPER_PROPS="$APP_HOME/gradle/wrapper/gradle-wrapper.properties"

# Download wrapper jar if missing
if [ ! -f "$WRAPPER_JAR" ]; then
    echo "Downloading gradle-wrapper.jar..."
    curl -sL "https://raw.githubusercontent.com/gradle/gradle/v8.1.1/gradle/wrapper/gradle-wrapper.jar" -o "$WRAPPER_JAR"
fi

exec java -jar "$WRAPPER_JAR" "$@"
