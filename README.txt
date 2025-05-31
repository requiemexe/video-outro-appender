🎬 Video Outro Appender with FFmpeg

This simple automation tool lets you append an outro to hundreds of .mp4 video clips using a single command.
It leverages FFmpeg and a lightweight batch script on Windows, designed for video editors and content creators who work with large batches of clips (e.g., stream highlights, social content, etc.).


⚙️ Features

Automatically traverses folders and finds .mp4 clips.

Appends a predefined outro to each video.

Saves the processed videos into a dedicated output folder.

Keeps the original quality (can be adjusted).



🤖 AI-Assisted Design

This project was optimized and structured with the help of AI tools, ensuring clarity, performance, and ease of use even for users with no coding experience.



📁 Folder Structure (Example)

Desktop/
│
├── Outro/
│   └── outro.mp4
│
├── VideoClips/
│   ├── clip1/
│   │   └── clip1.mp4
│   ├── clip2/
│   │   └── clip2.mp4
│   └── ...
│
├── Output/        ← (will be created automatically)
│
└── append_outro.bat



🛠️ Requirements

✅ Windows OS (tested on Windows 10/11)

✅ FFmpeg extracted and installed

✅ .mp4 video files organized in subfolders



📦 Setup

1. Download FFmpeg and extract it.


2. Place your outro.mp4 in a folder (e.g., C:\Users\YourName\Desktop\Outro\outro.mp4).


3. Organize your video clips in a folder tree (e.g., VideoClips/clip1/clip1.mp4).


4. Edit the append_outro.bat file to reflect your actual paths (see below).


5. Double-click the .bat file or run it from the command prompt.


✍️ Example

set "input_dir=C:\Users\YourName\Desktop\VideoClips"
set "output_dir=C:\Users\YourName\Desktop\Output"
set "outro=C:\Users\YourName\Desktop\Outro\outro.mp4"


📌 Notes

You can modify the ffmpeg command to preserve higher bitrate or change codec settings.

For performance, ensure your ffmpeg.exe is accessible in the system PATH, or use the full path in the script.