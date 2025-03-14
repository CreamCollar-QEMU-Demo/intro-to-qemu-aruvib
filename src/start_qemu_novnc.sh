#!/bin/bash

# Start websockify in the background
websockify -D --web=/usr/share/novnc/ 6080 localhost:5900

# Start QEMU
qemu-system-arm -M lm3s6965evb -kernel firmware.elf -nographic -vnc :0
