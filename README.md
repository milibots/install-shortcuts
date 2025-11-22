# 🚀 Shell Shortcuts Installer

> **Supercharge your terminal with 50+ sexy shortcuts!**  
> One command to rule them all - transform your shell experience instantly.

![GitHub](https://img.shields.io/badge/Shell-Bash%20%7C%20Zsh-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS-lightgrey?style=for-the-badge)

## ✨ What's Inside?

**50+ carefully crafted shortcuts** organized into intuitive categories:

### 🐧 **System & Navigation**
```bash
scs nginx          # systemctl status nginx
scr nginx          # systemctl restart nginx  
ll                 # ls -alF
..                 # cd ..
df                 # df -h
```

### 🐋 **Docker & Containers**
```bash
dps                # docker ps
dcu                # docker-compose up
dcd                # docker-compose down
```

### 📁 **Git Supercharged**
```bash
gs                 # git status
gcm "message"      # git commit -m "message"
gl                 # git log --oneline --graph
```

### 🔧 **Package Management**
```bash
aptup              # sudo apt update && sudo apt upgrade
dnfin nginx        # sudo dnf install nginx
```

### 🌐 **Networking & Tools**
```bash
myip               # curl ifconfig.me
weather            # curl wttr.in
cheat tmux         # curl cheat.sh/tmux
```

### 🛠️ **And so much more...**
- **Tmux sessions**: `tns dev`, `ta`, `tl`
- **Python development**: `py`, `pip`, `venv`
- **File operations**: `extract file.tar.gz`
- **Process management**: `psg nginx`
- **Search tools**: `search "text"`

## 🚀 Instant Installation

**One command to rule them all:**

```bash
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/milibots/install-shortcuts/main/install.sh)"
```

That's it! The script will:
- ✅ Auto-detect your shell (Bash/Zsh)
- 🔒 Create backups before any changes
- 🎨 Add all shortcuts with beautiful organization
- ⚡ Skip existing aliases (no duplicates)
- 🎯 Show usage examples

## 🎯 Usage Examples

| Category | Before | After |
|----------|--------|-------|
| **System** | `systemctl status nginx` | `scs nginx` |
| **Docker** | `docker-compose up` | `dcu` |
| **Git** | `git log --oneline --graph` | `gl` |
| **Files** | `ls -alF` | `ll` |
| **Network** | `curl ifconfig.me` | `myip` |

## 📋 Complete Shortcut List

### 🐧 System & Navigation (15 shortcuts)
- `sc`, `ssc`, `scr`, `scs`, `sce`, `scd`, `scstart`, `scstop`, `scl`, `sclf`, `scu`, `jc`, `jcf`
- `..`, `...`, `....`, `~`, `c`, `h`, `ls`, `ll`, `la`, `l`, `ltr`
- `rm`, `cp`, `mv` (safe versions)

### 🐋 Docker (9 shortcuts)
- `d`, `di`, `dps`, `dpsa`, `dk`, `drm`, `drmi`, `dcu`, `dcd`

### 📁 Git (10 shortcuts)
- `g`, `gs`, `ga`, `gc`, `gcm`, `gp`, `gpl`, `gco`, `gb`, `gl`

### 🔧 Package Management (9 shortcuts)
- `aptup`, `aptin`, `aptrm`, `dnfup`, `dnfin`, `dnfrm`, `pacup`, `pacin`, `pacrm`

### 🌐 Networking (6 shortcuts)
- `ip`, `ips`, `myip`, `ping`, `ports`, `wget`

### 🐍 Python (5 shortcuts)
- `python`, `pip`, `py`, `venv`, `activate`

### 🎮 Tmux (8 shortcuts)
- `t`, `ta`, `tn`, `tns`, `tl`, `tk`, `tks`, `td`

### 🔍 Search & Tools (8 shortcuts)
- `grep`, `egrep`, `fgrep`, `search`, `ff`, `psg`, `killp`, `pstop`

### 📊 System Info (6 shortcuts)
- `df`, `du`, `free`, `meminfo`, `ports`, `size`

### 🛠️ Development (5 shortcuts)
- `vim`, `editbash`, `editvim`, `rsync`, `scp`

### 🎯 Productivity (4 shortcuts)
- `weather`, `cheat`, `now`, `today`

### 💾 File Operations (3 shortcuts)
- `mkdir`, `diff`, `size`

### 🎨 Custom Functions
- `extract` - Extract any archive format automatically

## 🔧 Manual Installation

Prefer to check the script first? 

```bash
# Download and inspect
curl -fsSL https://raw.githubusercontent.com/milibots/install-shortcuts/main/install.sh -o install-shortcuts.sh

# Review the script
cat install-shortcuts.sh

# Run locally
chmod +x install-shortcuts.sh
./install-shortcuts.sh
```

## 🗑️ Uninstallation

```bash
# Simply remove the shortcut section from your ~/.bashrc or ~/.zshrc
# Look for the section between:
# "# ============================================================================"
# "# 🚀 SYSTEMCTL & TMUX SHORTCUTS"
# and
# "# 🎯 END OF SHORTCUTS"
```

## 🤝 Contributing

Found a cool shortcut? Want to improve something?

1. Fork the repository
2. Add your awesome shortcuts
3. Submit a pull request

## 📝 License

MIT License - feel free to use this however you want!

## ⭐ Support

If this made your terminal life better, give it a star! ⭐

---

**💻 Happy coding! May your terminal sessions be fast and your fingers well-rested.** 🚀
```

