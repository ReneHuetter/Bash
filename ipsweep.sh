#!/bin/bash
for ip in `sep 1 254`; do ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done