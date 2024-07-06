[ -d "/home/linuxbrew/.linuxbrew/bin" ] && export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
[ -d "/usr/local/go/bin" ] && export PATH=$PATH:/usr/local/go/bin
[ -d "${HOME}/.cargo/bin" ] && export PATH=$PATH:${HOME}/.cargo/bin
[ -d "${HOME}/.local/bin" ] && export PATH="$PATH:$HOME/.local/bin"
[ -d "${HOME}/.nix-profile/bin" ] && export PATH="$HOME/.nix-profile/bin:$PATH"

if [ -x "$(which atuin)" ]
then
    eval "$(atuin init zsh)"
fi