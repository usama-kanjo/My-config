# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/amani/.config/zsh/.zshrc'

# Yeşil kullanıcı, mavi dizin
PS1="%F{green}%n%f@%F{blue}%m%f:%F{yellow}%~%f$ "

autoload -Uz compinit
compinit

# merhaba osama yazisi icin
yellow="\e[1;33m" # Sarı renk
RESET="\e[0m" 

# yt-dlp download folders
YOUTUBE_DOWNLOAD_FILE_ONE="/home/amani/Downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[720p].%(ext)s"
YOUTUBE_DOWNLOAD_FILE_TWO="/home/amani/Downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[480p].%(ext)s"