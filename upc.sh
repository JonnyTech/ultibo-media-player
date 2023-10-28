cfgdir=$(dirname "$0")
fpcdir=~/development/fpc/bin/x86_64-linux
rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps,elf,img,bin}
$fpcdir/ppcrossarm -n @$cfgdir/upc.cfg -Tultibo -dRPI3 -WpRPI3B "$@"
# $fpcdir/ppcrossarm -n @$cfgdir/upc.cfg -Tultibo -dQEMUVPB -WpQEMUVPB "$@"
rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps,elf}
# NOTE: QUEMU does not support Pi GPU (omxplayer/vchiq)
# qemu-system-arm -nodefaults -M versatilepb -cpu cortex-a8 -kernel kernel.bin -m 256M -nic user,ipv6=off,hostfwd=tcp::5080-:80,hostfwd=tcp::5023-:23,hostfwd=tcp::5082-:82 -chardev stdio,id=char0,logfile=serial.log,signal=off -serial chardev:char0 -usb -drive file=disk.ima,if=sd,format=raw
