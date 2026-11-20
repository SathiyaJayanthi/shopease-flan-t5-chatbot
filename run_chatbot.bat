@echo off
title ShopEase AI Customer Support Chatbot
echo ========================================================
echo   Starting ShopEase Privacy-Aware Customer Support Bot
echo ========================================================
echo.

set PYTHON_EXE=C:\Users\sarav\AppData\Local\Programs\Python\Python312\python.exe

if not exist "%PYTHON_EXE%" (
    echo Python 3.12 was not found at %PYTHON_EXE%
    echo Please install or verify your Python installation path.
    pause
    exit /b
)

set HF_HUB_ENABLE_HF_TRANSFER=0
set HF_HUB_DISABLE_SYMLINKS_WARNING=1
set HF_HUB_ENABLE_XET=0

echo Checking for problematic hf-xet downloader...
"%PYTHON_EXE%" -m pip uninstall -y hf-xet >nul 2>&1

echo.
echo Launching ShopEase Assistant...
echo Model: google/flan-t5-base
echo Gradio Interface will open at: http://localhost:7860
echo.
"%PYTHON_EXE%" app.py

pause
