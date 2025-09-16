git clone https://github.com/Qadosch/server-dotfiles.git
# servr-dotfiles

Dotfiles n stuff for linux. Zsh, ssh, cheet-sheet, talisman, etc.

## Stuf
- Zsh & Oh My Zsh: Instals zsh, ohmyzsh, plugins (zaw, poety, sudo, celery, git, histroy)
- SSH config: basic ssh config
- Cheet-sheet: menu thing for commands `list`
- Talisman: git sec stuff
- Aliases & PATHs: some handy stuf

## Instal
Clone repo, run script:

```bash
git clone https://github.com/Qadosch/server-dotfiles.git
cd server-dotfiles
./install.sh
```

## Script does
- copys dotfiles to ~/
- installs curl git htop zsh
- gets ohmyzsh & plugins
- gets talisman

## Utils
- cheet-sheet: put scripts in ~/.cheet-sheet/, use `list` alias
- Aliases: like `ll` for ls -la

## Notes
- ssh config disables strict host key check for localhost
- The cheat-sheet utility expects scripts in `~/.cheet-sheet/`.
