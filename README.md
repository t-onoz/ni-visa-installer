# ni-visa-installer
modified code taken from here: https://forums.ni.com/t5/Linux-Users/Using-NI-VISA-with-Arch-Linux-or-Ubuntu-14-04/gpm-p/3462361#M2287

Checked with NI-VISA 16.0.0 & Arch Linux (2018-01-28, Linux 4.9.78-lts, x86_64)

## Usage
1. Install requirements
    - rpm (aka "alien" in ubuntu)
    - linux-headers
    - gcc libs (both 64 & 32 bit versions)
    - Mesa libGL (32-bit)
    - libxinerama (32-bit))
1. Get NI-VISA 16.0.0 from http://www.ni.com/download/ni-visa-16.0/6185/en/
1. Run `INSTALL --nodeps` inside .iso as root
1. Do not reboot after install
1. `sudo ./post_install.sh`
1. Reboot
1. `sudo visaconf` to see if it works
