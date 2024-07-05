alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
 
#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

#  -------------------------
#    NETWORK
#  -------------------------
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections

[ -x "$(which "lsd")" ] && alias ll='lsd -FlAh' || alias ll='ls -FGlAhp'
[ -x "$(which "lsd")" ] && alias ls='lsd' || alias ls='ls -Gp'
[ -x "$(which batcat)" ] && alias cat="$(which batcat)"
[ -x "$(which bat)" ] && alias cat="$(which bat)"
[ -x "$(which "nvim")" ] && alias vim="$(which nvim)"
[ -x "$(which "lvim")" ] && alias vim="$(which lvim)"
[ -x "$(which "rg")" ] && alias grep="$(which rg)"
[ -x "$(which "zoxide")" ] && eval "$(zoxide init --cmd cd zsh)"
[ -x "$(which "just")" ] && alias justg="just -f ~/.justfile" 

# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi