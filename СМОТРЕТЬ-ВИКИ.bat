@echo off
chcp 65001 >nul
title NationRise - вики (локальный просмотр)
cd /d "%~dp0"

echo.
echo   NationRise — локальный просмотр вики
echo   ------------------------------------
echo.

REM ставим движок, если его ещё нет (первый запуск — пара минут)
py -3.13 -m mkdocs --version >nul 2>&1
if errorlevel 1 (
    echo   Первый запуск: ставлю mkdocs-material, подождите...
    py -3.13 -m pip install --quiet --disable-pip-version-check mkdocs-material
    echo.
)

echo   Открываю http://127.0.0.1:8010
echo   Закрыть просмотр — закройте это окно или нажмите Ctrl+C
echo.

start "" http://127.0.0.1:8010
py -3.13 -m mkdocs serve -a 127.0.0.1:8010

pause
