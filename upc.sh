rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps,elf,img}
~/development/ultibo/fpc/bin/x86_64-linux/ppcrossarm -n @upc.cfg "$@"
rm -rf backup/ lib/ *.{o,ppu,s,rsj,lps}
