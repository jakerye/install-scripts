# 1. Boot BBB normally
# 2. Insert blank SD card
# 3. SSH into BBB
# 4. Run flasher script on BBB
sudo /opt/scripts/tools/eMMC/beaglebone-black-make-microSD-flasher-from-eMMC.sh
# 5. Wait for script to finish and BBB leds to turn off
# 6. Remove power from BBB
# 7. Remove SD card from BBB
# 8. Insert SD card into laptop, copy image from SD card
fdisk -l /dev/mmcblk0
dd if=/dev/mmcblk0/ | gzip > bbb.img.gz
