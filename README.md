# dotfiles

### Required tools/programs
Feel free to skip steps if something is already installed.
```bash
# Install neovim
sudo apt install libtool libtool-bin gettext cmake pkg-config unzip
git clone https://github.com/neovim/neovim && cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Install go language server (Don't forget to set the PATH's as well)
go install golang.org/x/tools/gopls@latest

# Install rust-analyzer language server (Add ~/.local/bin to path)
mkdir -p ~/.local/bin
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# Clangd language server
sudo apt-get install clangd-12
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
```
