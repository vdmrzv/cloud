apt install git nano screen tree
cp .bashrc .nanorc .screenrc .gdbinit .gdbearlyinit stl-views.gdb redirect-output.gdb ~/

# nano syntax
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

# vscode
mkdir ~/.config/Code/User/
cp settings.json keybindings.json ~/.config/Code/User/
code --install-extension yeannylam.insert-new-line
code --install-extension ericmccarthy.vs-code-mark-point
