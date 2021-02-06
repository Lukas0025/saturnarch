rm -rf airootfs/to_install
mkdir airootfs/to_install

touch airootfs/to_install/do_not_edit
cp packages.x86_64 airootfs/to_install
cp -r airootfs/etc airootfs/to_install
cp -r airootfs/usr airootfs/to_install

mkarchiso -v -o ${PWD}/out ${PWD}
