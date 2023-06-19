# ~/development/ultibo/fpc/bin/x86_64-linux/ppcrossarm -n @upc.cfg -dRPI3 -WpRPI3B "$@"
# ~/development/ultibo/fpc/bin/x86_64-linux/ppcrossarm -n @upc.cfg -dRPI3 "$@"

#./ffmpeg -i clip.mp4 -c:v libx264 -an -movflags +faststart video.h264
#./ffmpeg -i clip.mp4 -acodec pcm_s16le -ac 2 audio.wav

rm -rf backup/ lib/ *.ppu *.o *.elf kern*.img *.lps
/home/user/development/ultibo/fpc/bin/x86_64-linux/fpc.sh -Tultibo -Parm -CpARMV7A -WpRPI3B @RPI3.CFG -MObjFPC -Scghi -CX -O2 -XX -l -vewnhibq -Fu/home/user/development/ultibo/* -otest "$@"
rm -rf backup/ lib/ *.ppu *.o *.lps
