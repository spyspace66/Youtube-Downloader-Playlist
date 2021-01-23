# Youtube Downloader Playlist
 Download playlist as audio or video

@echo off
set /p link=Enter Playlist URL  
set /p type=Audio or Video (0 : audio, 1 : video) 
set /p folder=Folder Name 

if %type% == 0 (
  G:
  cd G:\Youtube To Watch\YTAudio

#Change to your drive, and folder in that drive


  mkdir "%folder%"
  cd "%folder%"
  youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --yes-playlist %link%
  Pause
)else if %type% == 1 (
  G:
  cd G:\Youtube To Watch\YTVideo
  mkdir "%folder%"
  cd "%folder%"
  youtube-dl --ignore-errors --format bestvideo --yes-playlist %link%
  Pause
)