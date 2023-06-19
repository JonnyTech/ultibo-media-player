# Ultibo bare metal pi media player

Split video and audio:

```
./ffmpeg -i clip.mp4 -c:v libx264 -an -movflags +faststart video.h264
./ffmpeg -i clip.mp4 -acodec pcm_s16le -ac 2 audio.wav

./ffmpeg -i clip.mp4 -map 0:v:0 -c:v libx264 video.h264 -map 0:a:0 -acodec pcm_s16le -ac 2 audio.wav
```

Add compiled files to the [Ultibo Demo](https://github.com/ultibohub/Demo/releases/) install\
Based on Gary Wood's fantastic [Ultibo](https://ultibo.org/) project \
Install development environment with [fpcupdeluxe](https://github.com/LongDirtyAnimAlf/fpcupdeluxe) \
Powered by the excellent [Free Pascal](https://freepascal.org)  Compiler

