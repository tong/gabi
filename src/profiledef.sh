#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="gabi"
iso_label="GABI_v1"
iso_publisher="disktree <https://disktree.net>"
iso_application="Gabi"
iso_version="v1"
install_dir="gabi"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
)
