@echo off
REM Get the path to the gemini executable (assuming it's in the PATH)
where gemini >nul 2>nul
if %ERRORLEVEL% neq 0 (
  echo Error: 'gemini' CLI not found. Please ensure it's installed via npm.
  exit /b 1
)

REM Execute the gemini CLI with all provided arguments
gemini %*
