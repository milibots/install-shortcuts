#!/bin/bash

# Colors for sexy output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Pretty print functions
print_color() {
    echo -e "${2}${1}${NC}"
}

print_header() {
    echo
    print_color "╔══════════════════════════════════════════════════════════════╗" $PURPLE
    print_color "║                   🚀 SHORTCUT INSTALLER 🚀                  ║" $PURPLE
    print_color "║              Adding 50+ sexy shortcuts to your shell        ║" $PURPLE
    print_color "╚══════════════════════════════════════════════════════════════╝" $PURPLE
    echo
}

print_success() {
    print_color "✅ $1" $GREEN
}

print_warning() {
    print_color "⚠️  $1" $YELLOW
}

print_info() {
    print_color "💡 $1" $CYAN
}

print_error() {
    print_color "❌ $1" $RED
}

# Function to reload shell configuration
reload_shell_config() {
    local config_file=$1
    print_info "Reloading shell configuration: $config_file"
    
    # Source the file directly in the current shell
    if [ -f "$config_file" ]; then
        # Use source or . to reload in current shell context
        if [ -n "$ZSH_VERSION" ]; then
            source "$config_file" 2>/dev/null
        else
            source "$config_file" 2>/dev/null
        fi
        print_success "Shell configuration reloaded successfully!"
        
        # Test if shortcuts are working
        print_info "Testing shortcuts..."
        if alias scs >/dev/null 2>&1; then
            print_success "Systemctl shortcuts are working!"
        else
            print_warning "Some shortcuts may need a new terminal session"
        fi
    else
        print_error "Config file not found: $config_file"
    fi
}

# Check if shell config exists
get_shell_config() {
    if [ -n "$ZSH_VERSION" ]; then
        echo "$HOME/.zshrc"
    elif [ -n "$BASH_VERSION" ]; then
        echo "$HOME/.bashrc"
    else
        echo "$HOME/.bashrc"
    fi
}

SHELL_CONFIG=$(get_shell_config)
BACKUP_FILE="${SHELL_CONFIG}.backup.$(date +%Y%m%d_%H%M%S)"

# Define all shortcuts in categories
SHORTCUTS=(
    "# ============================================================================"
    "# 🚀 SYSTEMCTL & TMUX SHORTCUTS"
    "# ============================================================================"
    "alias sc='systemctl'"
    "alias ssc='sudo systemctl'"
    "alias scr='systemctl restart'"
    "alias scs='systemctl status'"
    "alias sce='systemctl enable'"
    "alias scd='systemctl disable'"
    "alias scstart='systemctl start'"
    "alias scstop='systemctl stop'"
    "alias scl='systemctl list-units'"
    "alias sclf='systemctl list-unit-files'"
    "alias scu='systemctl --user'"
    "alias jc='journalctl'"
    "alias jcf='journalctl -f'"
    "alias t='tmux'"
    "alias ta='tmux attach'"
    "alias tn='tmux new-session -s'"
    "alias tns='tmux new-session -s'"
    "alias tl='tmux list-sessions'"
    "alias tk='tmux kill-session -t'"
    "alias tks='tmux kill-server'"
    "alias td='tmux detach'"
    ""
    "# ============================================================================"
    "# 🐧 LINUX SYSTEM & NAVIGATION"
    "# ============================================================================"
    "alias ..='cd ..'"
    "alias ...='cd ../..'"
    "alias ....='cd ../../..'"
    "alias ~='cd ~'"
    "alias c='clear'"
    "alias h='history'"
    "alias ls='ls --color=auto'"
    "alias ll='ls -alF'"
    "alias la='ls -A'"
    "alias l='ls -CF'"
    "alias ltr='ls -ltr'"
    "alias rm='rm -i'"
    "alias cp='cp -i'"
    "alias mv='mv -i'"
    ""
    "# ============================================================================"
    "# 🔍 GREP & SEARCH"
    "# ============================================================================"
    "alias grep='grep --color=auto'"
    "alias egrep='egrep --color=auto'"
    "alias fgrep='fgrep --color=auto'"
    "alias search='grep -r'"
    "alias ff='find . -type f -name'"
    ""
    "# ============================================================================"
    "# 📊 DISK & SYSTEM INFO"
    "# ============================================================================"
    "alias df='df -h'"
    "alias du='du -h'"
    "alias free='free -h'"
    "alias meminfo='free -m -l -t'"
    "alias psg='ps aux | grep'"
    "alias ports='netstat -tulanp'"
    ""
    "# ============================================================================"
    "# 🔧 PACKAGE MANAGEMENT"
    "# ============================================================================"
    "alias aptup='sudo apt update && sudo apt upgrade'"
    "alias aptin='sudo apt install'"
    "alias aptrm='sudo apt remove'"
    "alias dnfup='sudo dnf update'"
    "alias dnfin='sudo dnf install'"
    "alias dnfrm='sudo dnf remove'"
    "alias pacup='sudo pacman -Syu'"
    "alias pacin='sudo pacman -S'"
    "alias pacrm='sudo pacman -Rs'"
    ""
    "# ============================================================================"
    "# 🌐 NETWORKING"
    "# ============================================================================"
    "alias ip='ip -c'"
    "alias ips='ip addr show'"
    "alias myip='curl -s ifconfig.me'"
    "alias ping='ping -c 5'"
    "alias wget='wget -c'"
    ""
    "# ============================================================================"
    "# 🐋 DOCKER"
    "# ============================================================================"
    "alias d='docker'"
    "alias di='docker images'"
    "alias dps='docker ps'"
    "alias dpsa='docker ps -a'"
    "alias dk='docker kill'"
    "alias drm='docker rm'"
    "alias drmi='docker rmi'"
    "alias dcu='docker-compose up'"
    "alias dcd='docker-compose down'"
    ""
    "# ============================================================================"
    "# 📁 GIT"
    "# ============================================================================"
    "alias g='git'"
    "alias gs='git status'"
    "alias ga='git add'"
    "alias gc='git commit'"
    "alias gcm='git commit -m'"
    "alias gp='git push'"
    "alias gpl='git pull'"
    "alias gco='git checkout'"
    "alias gb='git branch'"
    "alias gl='git log --oneline --graph --decorate'"
    ""
    "# ============================================================================"
    "# 🐍 PYTHON"
    "# ============================================================================"
    "alias python='python3'"
    "alias pip='pip3'"
    "alias py='python3'"
    "alias venv='python3 -m venv'"
    "alias activate='source venv/bin/activate'"
    ""
    "# ============================================================================"
    "# 🔑 SSH & SERVERS"
    "# ============================================================================"
    "alias ssh='ssh -o ServerAliveInterval=60'"
    "alias scp='scp -p'"
    "alias rsync='rsync -avzP'"
    ""
    "# ============================================================================"
    "# 🛠️ DEVELOPMENT"
    "# ============================================================================"
    "alias vim='nvim'"
    "alias editbash='vim ~/.bashrc'"
    "alias editvim='vim ~/.vimrc'"
    "alias pstop='ps -ef | head -1; ps -ef | grep'"
    "alias killp='kill -9'"
    ""
    "# ============================================================================"
    "# 💰 FINANCIAL DATA (Cloudflare Worker)"
    "# ============================================================================"
    "# Crypto & Financial Data from Cloudflare Worker"
    "alias crypto='curl -s \"https://cmd.milibots.ir/crypto?format=text\"'"
    "alias arz='curl -s \"https://cmd.milibots.ir/arz?format=text\"'"
    "alias coin='curl -s \"https://cmd.milibots.ir/coin?format=text\"'"
    "alias gold='curl -s \"https://cmd.milibots.ir/gold?format=text\"'"
    "alias cars='curl -s \"https://cmd.milibots.ir/cars?format=text\"'"
    "alias phones='curl -s \"https://cmd.milibots.ir/phones?format=text\"'"
    "alias allprices='curl -s \"https://cmd.milibots.ir/all\" | lynx -stdin'"
    ""
    "# Advanced financial data functions"
    "cryptodata() {"
    "    local format=\"\${1:-text}\""
    "    curl -s \"https://cmd.milibots.ir/crypto?format=\$format\""
    "}"
    ""
    "financial() {"
    "    local type=\"\${1:-help}\""
    "    local format=\"\${2:-text}\""
    "    case \"\$type\" in"
    "        crypto|arz|coin|gold|cars|phones)"
    "            curl -s \"https://cmd.milibots.ir/\$type?format=\$format\""
    "            ;;"
    "        help)"
    "            echo \"Usage: financial [crypto|arz|coin|gold|cars|phones] [text|json]\""
    "            echo \"Examples:\""
    "            echo \"  financial crypto text\""
    "            echo \"  financial gold json\""
    "            echo \"  financial phones\""
    "            ;;"
    "        *)"
    "            echo \"Invalid type. Use: crypto, arz, coin, gold, cars, phones\""
    "            ;;"
    "    esac"
    "}"
    ""
    "prices() {"
    "    echo \"📊 Available Price Data:\""
    "    echo \"  crypto  - Cryptocurrency prices\""
    "    echo \"  arz     - Foreign exchange rates\""
    "    echo \"  coin    - Coin prices\""
    "    echo \"  gold    - Gold and precious metals\""
    "    echo \"  cars    - Car prices\""
    "    echo \"  phones  - Phone prices\""
    "    echo \"\""
    "    echo \"Usage: financial <type> [format]\""
    "    echo \"Example: financial crypto text\""
    "}"
    ""
    "# ============================================================================"
    "# 🎯 PRODUCTIVITY"
    "# ============================================================================"
    "alias weather='curl -s wttr.in'"
    "alias cheat='curl -s cheat.sh'"
    "alias now='date +\"%T\"'"
    "alias today='date +\"%Y-%m-%d\"'"
    ""
    "# ============================================================================"
    "# 💾 FILE OPERATIONS"
    "# ============================================================================"
    "alias mkdir='mkdir -pv'"
    "alias diff='colordiff'"
    "alias size='du -sh'"
    ""
    "# ============================================================================"
    "# 🎨 CUSTOM FUNCTIONS"
    "# ============================================================================"
    "extract() {"
    "    if [ -f \$1 ] ; then"
    "        case \$1 in"
    "            *.tar.bz2)   tar xjf \$1     ;;"
    "            *.tar.gz)    tar xzf \$1     ;;"
    "            *.bz2)       bunzip2 \$1     ;;"
    "            *.rar)       unrar e \$1     ;;"
    "            *.gz)        gunzip \$1      ;;"
    "            *.tar)       tar xf \$1      ;;"
    "            *.tbz2)      tar xjf \$1     ;;"
    "            *.tgz)       tar xzf \$1     ;;"
    "            *.zip)       unzip \$1       ;;"
    "            *.Z)         uncompress \$1  ;;"
    "            *.7z)        7z x \$1        ;;"
    "            *)     echo \"'\$1' cannot be extracted via extract()\" ;;"
    "        esac"
    "    else"
    "        echo \"'\$1' is not a valid file\""
    "    fi"
    "}"
    ""
    "# Quick directory size with sorting"
    "dsize() {"
    "    local path=\"\${1:-.}\""
    "    local depth=\"\${2:-1}\""
    "    du -h --max-depth=\"\$depth\" \"\$path\" | sort -hr"
    "}"
    ""
    "# Find and display large files"
    "findlarge() {"
    "    local path=\"\${1:-.}\""
    "    local size=\"\${2:-100M}\""
    "    find \"\$path\" -type f -size \"+\$size\" -exec ls -lh {} \\; | awk '{ print \$9 \": \" \$5 }'"
    "}"
    ""
    "# Quick system info"
    "sysinfo() {"
    "    echo \"=== System Information ===\""
    "    echo \"Hostname: \$(hostname)\""
    "    echo \"Uptime: \$(uptime -p)\""
    "    echo \"OS: \$(grep PRETTY_NAME /etc/os-release | cut -d='\"' -f2)\""
    "    echo \"Kernel: \$(uname -r)\""
    "    echo \"CPU: \$(grep 'model name' /proc/cpuinfo | head -1 | cut -d':' -f2 | xargs)\""
    "    echo \"Memory: \$(free -h | grep Mem: | awk '{print \$2}')\""
    "    echo \"Disk:\""
    "    df -h / | tail -1 | awk '{print \"  Total: \" \$2 \", Used: \" \$3 \", Free: \" \$4}'"
    "}"
    ""
    "# ============================================================================"
    "# 🎯 END OF SHORTCUTS"
    "# ============================================================================"
)

print_header

# Check if shell config exists
if [ ! -f "$SHELL_CONFIG" ]; then
    print_warning "Shell config $SHELL_CONFIG not found, creating it..."
    touch "$SHELL_CONFIG"
fi

# Create backup
print_info "Creating backup: $BACKUP_FILE"
cp "$SHELL_CONFIG" "$BACKUP_FILE"
print_success "Backup created successfully"

# Check if shortcuts already exist
if grep -q "SYSTEMCTL & TMUX SHORTCUTS" "$SHELL_CONFIG"; then
    print_warning "Shortcuts already installed! Updating existing installation..."
    
    # Remove existing shortcuts section
    sed -i '/# ============================================================================/,/# 🎯 END OF SHORTCUTS/d' "$SHELL_CONFIG"
    print_success "Removed existing shortcuts"
fi

# Add shortcuts to shell config
print_info "Adding 50+ sexy shortcuts to $SHELL_CONFIG..."

added_count=0
skipped_count=0

for line in "${SHORTCUTS[@]}"; do
    if [[ "$line" == alias* ]]; then
        alias_name=$(echo "$line" | cut -d'=' -f1 | cut -d' ' -f2)
        if grep -q "alias $alias_name=" "$SHELL_CONFIG"; then
            print_warning "Alias '$alias_name' already exists, skipping..."
            ((skipped_count++))
            continue
        fi
        ((added_count++))
    fi
    echo "$line" >> "$SHELL_CONFIG"
done

print_success "Added $added_count new shortcuts ($skipped_count already existed)"

# Force reload of shell configuration
print_info "Applying shortcuts to current session..."
reload_shell_config "$SHELL_CONFIG"

# Show usage examples
echo
print_color "🎉 Installation Complete!" $GREEN
echo
print_color "📖 Testing your new shortcuts:" $CYAN
echo
print_color "Try these commands:" $YELLOW
print_color "  myip          # Show your public IP" $BLUE
print_color "  scs nginx     # System status (if nginx installed)" $BLUE
print_color "  ll            # Detailed file listing" $BLUE
print_color "  weather       # Current weather" $BLUE
print_color "  dps           # Docker containers" $BLUE
echo
print_color "💰 NEW FINANCIAL DATA COMMANDS:" $PURPLE
print_color "  crypto        # Cryptocurrency prices" $CYAN
print_color "  arz           # Foreign exchange rates" $CYAN
print_color "  gold          # Gold prices" $CYAN
print_color "  cars          # Car prices" $CYAN
print_color "  phones        # Phone prices" $CYAN
print_color "  financial     # Advanced financial data with options" $CYAN
print_color "  prices        # Show available price data types" $CYAN
echo
print_color "Examples:" $YELLOW
print_color "  financial crypto text    # Crypto prices in console format" $BLUE
print_color "  financial gold json      # Gold prices in JSON" $BLUE
print_color "  financial phones         # Phone prices" $BLUE
echo
print_color "💾 Backup created: $BACKUP_FILE" $BLUE
print_color "📁 Config file: $SHELL_CONFIG" $BLUE
print_color "📊 Stats: $added_count new shortcuts added, $skipped_count skipped" $GREEN
echo
print_color "🔧 If any command doesn't work, open a new terminal or run:" $YELLOW
print_color "   source $SHELL_CONFIG" $YELLOW
echo
print_color "💰 Don't forget to replace 'cmd.milibots.ir' with your actual Cloudflare Worker URL!" $YELLOW
print_color "   Edit the financial aliases in $SHELL_CONFIG to use your worker domain" $YELLOW
