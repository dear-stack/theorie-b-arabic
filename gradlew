#!/bin/sh
# Bootstrap launcher for this project. GitHub Actions generates the official
# Gradle Wrapper JAR and scripts before invoking ./gradlew.
set -eu
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
printf '%s\n' 'Gradle is not installed. Use the included GitHub Actions workflow to generate the official wrapper and build the APK.' >&2
exit 127
