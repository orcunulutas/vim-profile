# 6) install.sh (asıl profesyonel dokunuş)
Bu dosya sayesinde yeni makinede **tek komut** yeter.

```bash
#!/usr/bin/env bash
set -e

echo "[+] Installing vim profile"

# backup varsa
if [ -f ~/.vimrc ]; then
  echo "[!] Existing ~/.vimrc backed up to ~/.vimrc.bak"
  mv ~/.vimrc ~/.vimrc.bak
fi

ln -s "$(pwd)/vimrc" ~/.vimrc

# vim-plug yoksa kur
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "[+] Installing vim-plug"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "[+] Open vim and run :PlugInstall"
