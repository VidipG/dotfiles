# Dotfiles

A repository for my configuration files, stored as originals with symlinks created in their standard locations.

## Repository Structure

- `zshrc/`: Shell configuration
- `vscode/`: VS Code settings and extensions

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
