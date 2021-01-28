@echo off
set /p link=Enter Playlist URL  
set /p type=Audio or Video (0 : audio, 1 : video) 
set /p folder=Folder Name 
if %type% == 0 (
  G:
  cd G:\Youtube To Watch\YTAudio
  mkdir "%folder%"
  cd "%folder%"
  youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --yes-playlist %link%
  GOTO START
)else if %type% == 1 (
  G:
  cd G:\Youtube To Watch\YTVideo
  mkdir %folder%
  cd %folder%
  youtube-dl --ignore-errors --format bestvideo --yes-playlist %link%
  GOTO START
)
