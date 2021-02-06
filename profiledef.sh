#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="SaturnArch"
iso_label="SATURNARCH_$(date +%Y%m)"
iso_publisher="Lukas Plevac <lukas@plevac.eu>"
iso_application="SaturnArch Linux"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/usr/local/bin/apt"]="1:1:1"
  ["/root/Desktop/install"]="1:1:1"
)
