@echo off
chcp 65001 >nul
cd /d "%~dp0"
title 법률-조례 연결 확인기

python law_ordinance_network.py
if errorlevel 1 (
    echo.
    echo [python 명령이 실패했습니다. py 런처로 재시도합니다...]
    py law_ordinance_network.py
)
if errorlevel 1 (
    echo.
    echo ─────────────────────────────────────────────
    echo  실행에 실패했습니다. 아래를 확인하세요.
    echo   1) 파이썬이 설치되어 있는지  ^(python --version^)
    echo   2) 패키지 설치:  pip install -r requirements.txt
    echo ─────────────────────────────────────────────
    pause
)
