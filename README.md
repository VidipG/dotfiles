# Dotfiles

A repository for my configuration files, stored as originals with symlinks created in their standard locations.

## Repository Structure

- `zshrc/`: Shell config
- `vscode/`: VSCode config
- `tmux/`: Tmux config
- `aerospace/`: Aerospace config
- `tablissng`: Tablissng config

## Symlink Setup

Use the following commands to link these configurations to your system. Replace `<REPO_PATH>` with the absolute path to this repository.

### Zsh
```bash
ln -s <REPO_PATH>/zshrc/.zshrc ~/.zshrc
```

### VS Code
```bash
ln -s <REPO_PATH>/vscode/settings.json <VSCODE_CONFIG_DIR>/settings.json
```
> **Note:** `<VSCODE_CONFIG_DIR>` is typically `~/Library/Application Support/Code/User` for macOS.

### Tmux
- Gruvbox theme: https://github.com/curiousvlxd/gruvbox-ua-iterm
```bash
ln -s <REPO_PATH>/tmux/.tmux.conf ~/.tmux.conf
```

### AeroSpace
```bash
mkdir -p ~/.config/aerospace
ln -s <REPO_PATH>/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
```
