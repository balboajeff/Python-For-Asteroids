#! /usr/bin/env python3

import socket
import serial

def get_ip():
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            s.connect(('8.8.8.8', 80))
            ip = s.getsockname()[0]
        except Exception:
            continue
        break
    return ip


if __name__ == '__main__':
    ser = serial.Serial('/dev/ttyUSB0')
    # Send the command to clear the screen
    ser.write(b'\xfe\x01')
    ser.write(bytes(get_ip(), 'utf-8'))

