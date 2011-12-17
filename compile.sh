#!/bin/sh
rm -f *.o  *.res *.aul
gcc -c en_resource.c -o en_resource.o
windres --input-format=rc --output-format=coff en_resource.rc -o en_resource.res
gcc -o en_resource.aul -shared -Wl,-s en_resource.o en_resource.res

