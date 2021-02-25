# teensyCool
Code, mechanical, and electrical design files for teensyCool automatic adjustable coolant nozzle for Tormach milling machines

This repository contains files to recreate the teensyCool by SmellyDog automatic adjustable coolant nozzle for Tormach milling machines. This project replicates the function and largely recreates the aesthetic of the SmartCool adjustable coolant nozzle available from Tormach. Additional information and installation instructions will periodically be added to this README as time permits. 

Programming the teensy can be accomplished using Teensyduino within the Arduino IDE: https://www.pjrc.com/teensy/td_download.html

Installation on a Tormach mill requires installation of 99-teensy.rules to /etc/udev/rules in PathPilot.

Thanks to Jon Watte for his serial parsing routine used in his USBIO emulator found here: https://github.com/jwatte/teensy_tormach_usbio

All files and designs are Copyright 2021 Ian Vivero, released under GNU GPLV3.0
