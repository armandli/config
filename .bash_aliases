#prevent-error-during-typing kind of aliases
alias cd..="cd .."
alias cd-="cd -"
alias ll="ls -al"

#easy ps
alias psu="ps -ef | grep `whoami`"

#grep with colour
alias grep='grep --color=tty -d skip'

#c++11 by default
alias g++11='g++ --std=c++11'
alias g++14='g++ --std=c++14'
alias g++17='g++ --std=c++17'
alias clang++11='clang++ --std=c++11'
alias clang++14='clang++ --std=c++14'
alias clang++17='clang++ --std=c++17'

#mac specific aliases
#alias sed="/usr/local/bin/gsed"

#tmux alias
alias ta='tmux attach -t'

#replace ls with exa
if [[ -f "/usr/bin/exa" ]]; then
  alias ls=/usr/bin/exa
fi

#replace cat with bat
if [[ -f "/usr/bin/bat" ]]; then
  alias cat=/usr/bin/bat
fi

