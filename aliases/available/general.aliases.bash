cite about-alias
about-alias 'general aliases'

if ls --color -d . &> /dev/null
then
  alias ls="ls --color=auto"
elif ls -G -d . &> /dev/null
then
  alias ls='ls -G'        # Compact view, show colors
fi

# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lhF'     #size,show type,human readable
alias la='ls -lAhF'   #long list,show almost all,show type,human readable
alias lr='ls -tRhF'   #sorted by date,recursive,show type,human readable
alias lt='ls -lthF'   #long list,sorted by date,show type,human readable
alias ll="ls -alhF"
alias l1='ls -1'
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias lm='ls -alhF|less'
alias _="sudo"
alias vi="vim"
alias ag='alias | grep'
alias df="df -hT"
alias du="du -h"
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'
# Shortcuts to edit startup files
alias vbrc="vim ~/.bashrc"
alias vbpf="vim ~/.bash_profile"
alias sbrc='source ~/.bashrc'

# Emacs 
alias ec="emacsclient -c"
alias ect="emacsclient -t"
# colored grep
# Need to check an existing file for a pattern that will be found to ensure
# that the check works when on an OS that supports the color option
if grep --color=auto "a" "${BASH_IT}/"*.md &> /dev/null
then
  alias grep='grep --color=auto'
  export GREP_COLOR='1;33'
fi

shopt -s cdspell
shopt -s autocd
shopt -s nocaseglob

if which gshuf &> /dev/null
then
  alias shuf=gshuf
fi

alias c='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'
alias help='man'
alias p='ps -f'
alias sortnr='sort -n -r'
alias irc="${IRC_CLIENT:=irc}"

# Language aliases
alias py='python'
alias ipy='ipython'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# Directory
alias md='mkdir -p'
alias rd='rmdir'

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi


# Common misspellings of bash-it
alias bshit='bash-it'

# Additional bash-it aliases for help/show
alias bshsa='bash-it show aliases'
alias bshsc='bash-it show completions'
alias bshsp='bash-it show plugins'
alias bshha='bash-it help aliases'
alias bshhc='bash-it help completions'
alias bshhp='bash-it help plugins'
alias bshsch="bash-it search"
alias bshenp="bash-it enable plugin"
alias bshena="bash-it enable alias"
alias bshenc="bash-it enable completion"

# Shorten extract
alias x="extract"

# sudo editors
alias svi="sudo vim"

#shopt
shopt -s autocd
shopt -s cdspell

# export 
#该行使当执行某一未安装的程序时，可以便捷安装
export COMMAND_NOT_FOUND_INSTALL_PROMPT=1
#使用 HISTCONTROL 清除整个命令历史中的重复条目
export HISTCONTROL=erasedups
#使用 HISTTIMEFORMAT 显示时间戳
export HISTTIMEFORMAT='%F %T '

# Display whatever file is regular file or folder
catt() {
  for i in "$@"; do
    if [ -d "$i" ]; then
      ls "$i"
    else
      cat "$i"
    fi
  done
}
