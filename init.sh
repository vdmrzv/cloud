mkdir ~/.config/Code/User/
cp .nanorc .screenrc .gdbinit .gdbearlyinit stl-views.gdb redirect-output.gdb ~/
cp settings.json keybindings.json ~/.config/Code/User/
code --install-extension yeannylam.insert-new-line
code --install-extension ericmccarthy.vs-code-mark-point
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh
