# 🚀 Shell Shortcuts Installer

![GitHub](https://img.shields.io/badge/Shell-Bash%20%7C%20Zsh-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS-lightgrey?style=for-the-badge)

## ✨ What's Inside?

**60+ carefully crafted shortcuts** organized into intuitive categories:

### 💰 **Financial Data (NEW!)**
```bash
crypto              # Cryptocurrency prices
arz                 # Foreign exchange rates  
gold                # Gold and precious metals
coin                # Coin prices
cars                # Car prices
phones              # Phone prices
financial crypto    # Advanced crypto data with formats
prices              # Show all available price types
```

### 🐍 **Python Development (NEW!)**
```bash
pmv                 # python -m venv venv (create virtual env)
pfr                 # pip freeze > requirements.txt
cls                 # clear screen
activate            # source venv/bin/activate
```

### 🔧 **Installation Commands (NEW!)**
```bash
setpanel            # Install milibots panel
setssl              # Setup SSL certificates
```

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
| **Financial** | `curl -s "https://api.coingecko.com/api/v3/..."` | `crypto` |
| **Python** | `python3 -m venv venv` | `pmv` |
| **Python** | `pip freeze > requirements.txt` | `pfr` |
| **System** | `systemctl status nginx` | `scs nginx` |
| **Docker** | `docker-compose up` | `dcu` |
| **Git** | `git log --oneline --graph` | `gl` |
| **Files** | `ls -alF` | `ll` |
| **Network** | `curl ifconfig.me` | `myip` |

## 📋 Complete Shortcut List

### 💰 Financial Data (12 shortcuts)
- `crypto` - Cryptocurrency prices
- `arz` - Foreign exchange rates
- `coin` - Coin prices  
- `gold` - Gold and precious metals
- `cars` - Car prices
- `phones` - Phone prices
- `allprices` - All price data in lynx browser
- `cryptodata()` - Advanced crypto data with format parameter
- `financial()` - Universal financial data function
- `prices()` - Show all available price types

### 🐍 Python Development (6 shortcuts) - **NEW!**
- `python` - python3
- `pip` - pip3
- `py` - python3
- `venv` - python3 -m venv
- `pmv` - python3 -m venv venv (quick virtual env)
- `pfr` - pip freeze > requirements.txt
- `activate` - source venv/bin/activate

### 🔧 Installation Commands (2 shortcuts) - **NEW!**
- `setpanel` - Install milibots panel
- `setssl` - Setup SSL certificates

### 🐧 System & Navigation (15 shortcuts)
- `sc`, `ssc`, `scr`, `scs`, `sce`, `scd`, `scstart`, `scstop`, `scl`, `sclf`, `scu`, `jc`, `jcf`
- `..`, `...`, `....`, `~`, `c`, `cls`, `h`, `ls`, `ll`, `la`, `l`, `ltr`
- `rm`, `cp`, `mv` (safe versions)

### 🐋 Docker (9 shortcuts)
- `d`, `di`, `dps`, `dpsa`, `dk`, `drm`, `drmi`, `dcu`, `dcd`

### 📁 Git (10 shortcuts)
- `g`, `gs`, `ga`, `gc`, `gcm`, `gp`, `gpl`, `gco`, `gb`, `gl`

### 🔧 Package Management (9 shortcuts)
- `aptup`, `aptin`, `aptrm`, `dnfup`, `dnfin`, `dnfrm`, `pacup`, `pacin`, `pacrm`

### 🌐 Networking (6 shortcuts)
- `ip`, `ips`, `myip`, `ping`, `ports`, `wget`

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
- `extract()` - Extract any archive format automatically
- `dsize()` - Quick directory size with sorting
- `findlarge()` - Find and display large files
- `sysinfo()` - Comprehensive system information

## 💰 Financial Data Features

### Quick Access Commands:
```bash
crypto        # Get cryptocurrency prices
arz           # Check foreign exchange rates  
gold          # Gold and precious metals prices
financial crypto text    # Crypto prices in console format
financial gold json      # Gold prices in JSON format
prices                   # Show all available price types
```

### Advanced Usage:
```bash
# Multiple output formats
financial crypto text    # Human-readable text
financial crypto json    # JSON format for scripting

# All available data types
financial crypto
financial arz  
financial coin
financial gold
financial cars
financial phones
```

## 🐍 Python Development Workflow

### Complete Python Environment Setup:
```bash
pmv          # Create virtual environment
activate     # Activate virtual environment
pip install requests pandas numpy  # Install packages
pfr          # Generate requirements.txt
```

### Quick Python Commands:
```bash
py script.py           # Run Python script
pip list              # Show installed packages
pfr                   # Export dependencies
cls                   # Clear screen
```

## 🔧 Installation Commands

### Quick Setup:
```bash
setpanel    # Install milibots control panel
setssl      # Setup SSL certificates automatically
```

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
# "# 🚀 CUSTOM SHORTCUTS"
# and the end of the shortcuts section
