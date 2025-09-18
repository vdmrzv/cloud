apt install nano tree screen xclip
cp .bashrc .nanorc .screenrc .gdbinit .gdbearlyinit ~/

# nano syntax
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

# vscode
mkdir -p ~/.config/Code/User/
cp settings.json keybindings.json ~/.config/Code/User/
code --install-extension ericmccarthy.vs-code-mark-point
