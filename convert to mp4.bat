@echo off
::Pushd "Filepath" <- current folder where bat file is located
::Pushd "D:\Users" <- specific directory
::bat file / script to convert various file types to .mp3 with FFMPEG
set /p filepath=Enter path:
Pushd %filepath%
for %%a in (*) do (
  ffmpeg -i "%%~fa" "Sub-%%~na.mp4"
)