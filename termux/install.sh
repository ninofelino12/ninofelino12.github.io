#!/data/data/com.termux/files/usr/bin/bash
# INSTALLER MENU SSH - NINOFELINO
# Cara pake di HP baru: curl -sL https://raw.githubusercontent.com/ninofelino12/ninofelino12.github.io/main/termux/install.sh | bash

clear
echo "=================================="
echo "  INSTALL MENU SSH - NINOFELINO  "
echo "=================================="
echo ""

echo "[1/5] Update Termux beb..."
pkg update -y

echo "[2/5] Install paket yang dibutuhin..."
pkg install -y lua luarocks fzf jq curl openssh git

echo "[3/5] Benerin permission fzf (biar gak error kayak dulu)..."
chmod +x $PREFIX/bin/fzf

echo "[4/5] Install dkjson buat Lua..."
luarocks install dkjson

echo "[5/5] Download menu.lua dari Github..."
curl -sL https://raw.githubusercontent.com/ninofelino12/ninofelino12.github.io/main/termux/menu.lua -o ~/menu.lua
chmod +x ~/menu.lua

echo ""
echo "Bikin shortcut 'menu' biar gampang..."
echo 'alias menu="lua ~/menu.lua"' >> ~/.bashrc

echo ""
echo "=================================="
echo "  BERHASIL BEB! 🎉"
echo "  Ketik ini buat jalanin:"
echo "  menu"
echo "  atau"
echo "  lua ~/menu.lua"
echo "=================================="
echo ""

# Langsung jalanin menunya
lua ~/menu.lua