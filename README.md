# ni-visa-installer
modified code taken from here: https://forums.ni.com/t5/Linux-Users/Using-NI-VISA-with-Arch-Linux-or-Ubuntu-14-04/gpm-p/3462361#M2287

Checked with NI-VISA 16.0.0 & Arch Linux (2018-01-28, Linux 4.9.78-lts, x86_64) or Ubuntu 16.04.3  (Linux 4.10)

## Usage
1. Install requirements
    - example: `sudo apt-get install alien linux-headers-generic libstdc++6 libstdc++6:i386 libxinerama1:i386 libgl1-mesa-glx:i386`
1. Get NI-VISA 16.0.0 from http://www.ni.com/download/ni-visa-16.0/6185/en/
1. Run `INSTALL --nodeps` inside .iso as root
1. Do not reboot after install
1. `sudo ./post_install.sh`
1. Reboot
1. `sudo visaconf` to see if it works
