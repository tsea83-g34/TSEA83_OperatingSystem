#!/usr/bin/env python3
import sys

def hex_to_eight(hex_num):
    r = int(hex_num[0:2], 16)
    g = int(hex_num[2:4], 16)
    b = int(hex_num[4:6], 16)

    r = r // 32
    g = g // 32
    b = b // 64

    r = bin(r)[2:].zfill(3)
    g = bin(g)[2:].zfill(3)
    b = bin(b)[2:].zfill(2)

    return int(r + g + b, 2)

if __name__ == "__main__":
    for hex_num in sys.argv[1:]:
        dec = hex_to_eight(hex_num)
        print(bin(dec)[2:].zfill(8), "-", hex(dec)[2:].zfill(2), "-", dec)


        