@echo off


pip --version >nul 2>&1
if %errorlevel% neq 0 (
  echo Error: pip is not installed.
  exit /b 1
)


pip show SpeechRecognition >nul 2>&1
if %errorlevel% neq 0 (
  echo SpeechRecognition is not installed. Installing now...
  pip install SpeechRecognition
)

echo All dependencies are installed.
pause
