rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps,elf,img,bin}
~/development/fpc/bin/x86_64-linux/ppcrossarm -n @upc.cfg -Tultibo -dRPI3 -WpRPI3B "$@"
# ~/development/fpc/bin/x86_64-linux/ppcrossarm -n @upc.cfg -Tultibo -dQEMUVPB -WpQEMUVPB "$@"
rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps,elf}
# NOTE: QUEMU does not support Pi GPU (omxplayer/vchiq)
# qemu-system-arm -M versatilepb -cpu cortex-a8 -kernel kernel.bin -m 256M \
# -monitor stdio -serial file:serial0.txt -drive file=disk.ima,if=sd,format=raw \
# -net nic -net user,hostfwd=tcp::5080-:80,hostfwd=tcp::5023-:23 -usb
