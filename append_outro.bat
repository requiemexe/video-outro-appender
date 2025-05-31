@echo off
setlocal enabledelayedexpansion

REM Set input and output directories
set "input_dir=FULL_PATH_TO_VIDEO_CLIPS"
set "output_dir=FULL_PATH_TO_OUTPUT_FOLDER"

REM Create the output folder if it doesn't exist
if not exist "%output_dir%" mkdir "%output_dir%"

REM Append outro to each video clip
for /r "%input_dir%" %%f in (*.mp4) do (
    REM Path to the outro file
    set "outro=FULL_PATH_TO_OUTRO\outro.mp4"
    
    REM Debug: print paths
    echo Outro Path: !outro!
    echo Clip Path: %%f

    REM Define the output file path
    set "output_file=%output_dir%\%%~nxf"

    REM FFmpeg command to concatenate video + outro
    ffmpeg -i "%%f" -i "!outro!" -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" -c:v libx264 -c:a aac -strict experimental "!output_file!"

    echo Outro added to: %%f
)

echo Process completed.
pause