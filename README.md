![image](/home/user/Pictures/example.png)

# rpi
a collection of customisations for rPi 4 and 5

# Installed Packages
- VS Code
- Chromium
- Docker
- Cool Retro Term
- LibreOffice
- Angry IP Scanner
- Qmmp
- VLC Media Player
- GIMP
- Btop++
- cec-utils
- neofetch
- fastfetch
- cifs-utils

# Scripts
## Image-Backup
```
cd ~
git clone https://github.com/seamusdemora/RonR-RPi-image-utils
sudo install --mode=755 ./RonR-RPi-image-utils/image-* /usr/local/sbin
```
## Posterr Scripts
TBA

# Configuration 
- VNC enabled
- X11 set in advanced settings, rather than wayland. `sudo raspi-config`

# Notes
> I user TigerVNC on Ubuntu desktop to remote into the Pi running RealVNC.
> Remote sessions would fail until i set ```options - compresession - preferred encoding - hextile``` in the TigerVNC app. 
