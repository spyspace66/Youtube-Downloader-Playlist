@echo off
:START
set /p link=Enter Playlist URL  
set /p type=Audio or Video (0 : audio, 1 : video) 
set /p folder=Download Folder Path  
if %type% == 0 (
  youtube-dl -o "%folder%\%%(title)s.%%(ext)s" --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --yes-playlist %link%
  GOTO START
)else if %type% == 1 (
  youtube-dl -o "%folder%\%%(title)s.%%(ext)s" --ignore-errors --format bestvideo --yes-playlist %link%
  Pause
  GOTO START
)
