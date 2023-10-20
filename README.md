# Ultibo bare metal pi media player

Extract [Ultibo Demo](https://github.com/ultibohub/Demo/releases/) to FAT32 formatted SD card \
Copy compiled files to the the above folder \
Based on Gary Wood's fantastic [Ultibo](https://ultibo.org/) project \
Install development environment with [fpcupdeluxe](https://github.com/LongDirtyAnimAlf/fpcupdeluxe) \
Powered by the excellent [Free Pascal](https://freepascal.org) Compiler

Split video and audio:

```
./ffmpeg -i clip.mp4 -c:v libx264 -an -movflags +faststart video.h264
./ffmpeg -i clip.mp4 -c:a pcm_s16le -ac 2 audio.wav

./ffmpeg -i clip.mp4 -map 0:v:0 -c:v libx264 video.h264 -map 0:a:0 -c:a pcm_s16le -ac 2 audio.wav
```

Additional notes:

From https://github.com/PeterLemon/RaspberryPi
```
I only test with the latest bleeding edge firmware:
https://github.com/raspberrypi/firmware/tree/master/boot

You will need these 2 files:
bootcode.bin
start.elf

You will need to create a "config.txt" file that contains the lines:
kernel_old=1
disable_commandline_tags=1
disable_overscan=1
framebuffer_swap=0
```

```
curl -O -L https://github.com/raspberrypi/firmware/raw/master/boot/bootcode.bin
curl -O -L https://github.com/raspberrypi/firmware/raw/master/boot/start.elf

wget https://github.com/raspberrypi/firmware/raw/master/boot/bootcode.bin
wget https://github.com/raspberrypi/firmware/raw/master/boot/start.elf

echo -e 'kernel_old=1\ndisable_commandline_tags=1\ndisable_overscan=1\nframebuffer_swap=0' > config.txt
```

Other config.txt options:

```
max_framebuffers=2
gpu_mem=128
display_hdmi_rotate=0
avoid_warnings=1
# program_usb_boot_mode=1 # untested
```

Audio output from `fpcsrc/packages/cocoaint/src/coreaudio/AudioHardwareBase.inc`:
```
const
  kAudioDeviceTransportTypeBuiltIn = 'bltn';
  kAudioDeviceTransportTypeHDMI = 'hdmi';
```

Details at https://www.raspberrypi.com/documentation/computers/config_txt.html

