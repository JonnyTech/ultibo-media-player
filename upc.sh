#./ffmpeg -i clip.mp4 -c:v libx264 -an -movflags +faststart video.h264
#./ffmpeg -i clip.mp4 -c:a pcm_s16le -ac 2 audio.wav
#./ffmpeg -i clip.mp4 -map 0:v:0 -c:v libx264 video.h264 -map 0:a:0 -c:a pcm_s16le -ac 2 audio.wav

rm -rf backup/ lib/ *.ppu *.o *.elf kern*.img *.lps
~/development/ultibo/fpc/bin/x86_64-linux/fpc.sh -Tultibo -Parm -CpARMV7A -WpRPI3B @RPI3.CFG -MObjFPC -Scghi -CX -O2 -XX -l -vewnhibq -Fu~/development/ultibo/* -otest "$@"
rm -rf backup/ lib/ *.ppu *.o *.lps
