@echo off
rem Bootstrap launcher for this project. GitHub Actions generates the official
rem Gradle Wrapper JAR and scripts before invoking ./gradlew.
where gradle >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  gradle %*
  exit /b %ERRORLEVEL%
)
echo Gradle is not installed. Use the included GitHub Actions workflow to generate the official wrapper and build the APK. 1>&2
exit /b 127
