@echo off

REM Check if pip is installed
pip --version >nul 2>&1
if %errorlevel% neq 0 (
  echo Error: pip is not installed.
  exit /b 1
)

REM Check if SpeechRecognition is installed
pip show SpeechRecognition >nul 2>&1
if %errorlevel% neq 0 (
  echo SpeechRecognition is not installed. Installing now...
  pip install SpeechRecognition
)

echo All dependencies are installed.
pause
