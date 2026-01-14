# Özel ayarlarınız buraya
export HISTFILE="$HOME/.cache/bash/history"
export PS1='\u@\h:\w\$ '
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="%d/%m/%y %T "
# Tüm bash oturumlarında history paylaşımı
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Bazı komutları history'den hariç tut
export HISTIGNORE="ls:ll:la:cd:pwd:exit:clear:history"


# Yeşil kullanıcı, mavi dizin
# Renk tanımları
GREEN='\[\033[01;32m\]'
BLUE='\[\033[01;34m\]'
YELLOW='\[\033[01;33m\]'
RESET='\[\033[00m\]'

# Prompt'u ayarla
PS1="${GREEN}\u${RESET}@${BLUE}\h${RESET}:${YELLOW}\w${RESET}\$ "




# merhaba osama yazisi icin
yellow=$'\e[1;33m' # Sarı renk
RESET=$'\e[0m'

# yt-dlp download folders
YOUTUBE_DOWNLOAD_FILE_ONE="/home/amani/Downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[720p].%(ext)s"
YOUTUBE_DOWNLOAD_FILE_TWO="/home/amani/Downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[480p].%(ext)s"