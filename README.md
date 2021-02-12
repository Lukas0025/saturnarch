# SaturnArch
Small linux system base on arch linux. Build to be minimalist but usable in GUI.

![ScreenShot](https://raw.github.com/lukas0025/saturnarch/master/screens/black.png)

more ScreenShots in `/screens`
website + iso: https://lukas.plevac.eu/saturnarch

## Install build tools
for build you need `archiso` package. (https://archlinux.org/packages/?name=archiso)

```sh
sudo pacman -S archiso
```

## Building iso
You can build iso only on Arch Linux. Make you sure is  `/work` and `/out` deleted. If not delete them.

```sh
chmod +x build.sh
sudo ./build.sh
```

## clean repo after build
Remove  `/work` and `/out`. 

```sh
sudo rm -rf /work
sudo rm -rf /out
```

## install on computer
* copy iso content to USB flash disk or CD disk
```sh
sudo dd if=my-saturnarch.iso of=/dev/mydisk status=progress
```
* boot usb flash disk on legacy mode (UEFI mode is not supported!)
* \[info\] after boot -> auto login to root
* click on install file on desktop
* enter information (user, passwords, hostname, ...)
* after complete reboot computer
```sh
reboot
```
