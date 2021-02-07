rm -rf airootfs/to_install
mkdir airootfs/to_install
mkdir airootfs/to_install/etc
mkdir airootfs/to_install/usr

touch airootfs/to_install/do_not_edit
cp packages.x86_64 airootfs/to_install
cp -r airootfs/etc/skel airootfs/to_install/etc
cp airootfs/etc/pacman.conf airootfs/to_install/etc
cp airootfs/etc/os-release airootfs/to_install/etc
cp airootfs/etc/bash.bashrc airootfs/to_install/etc
cp -r airootfs/etc/pacman.d airootfs/to_install/etc
cp -r airootfs/usr/backgrounds airootfs/to_install/usr

mkarchiso -v -o ${PWD}/out ${PWD}
