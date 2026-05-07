export PATH=/usr/local/bin:$PATH
export EDITOR=vi

# Throttle Homebrew auto-update to once per day (default is 5 minutes)
export HOMEBREW_AUTO_UPDATE_SECS=86400
export LC_ALL="en_US.UTF-8"

ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="amok"

# Aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias mvim="mvim -v"
alias vi="mvim"
alias vim="mvim"
alias claude-otter='otter claude-code'
alias cw='~/work/_notes/.scripts/claude-work'
# Plugins
plugins=(git emoji)

source $ZSH/oh-my-zsh.sh

# Customize
export LSCOLORS="Dxcxbxdxcxaeadabagacdx"

alias ls='ls -A -G'

# Bindings
bindkey -v			#VI mode

# Searchi
bindkey '^R'      history-incremental-search-backward
bindkey '^S'      history-incremental-search-forward
bindkey '^[[A' 	  up-line-or-search	# Cursor up
bindkey '^[[B' 	  down-line-or-search	# Cursor down

#Navigation
bindkey "^[[C"	  forward-char		# Cursor right
bindkey "^[[D"	  backward-char		# Cursor left
bindkey "^[^[[C"  forward-word		# Alt Cursor right
bindkey "^[^[[D"  backward-word		# Alt Cursor left
bindkey "^[[H"	  beginning-of-line	# Home key
bindkey "^[[F"	  end-of-line		# End key

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char



export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# License Vault URL for activation of Jetbrains products at Canva
export JETBRAINS_LICENSE_SERVER=https://canva.fls.jetbrains.com/
[[ ! $(command -v nix) && -e "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]] && source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"
export PATH="$HOME/Library/Application Support/Otter/claude-code/node_modules/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ZSH AI
export ZSH_AI_PROVIDER="openai"
export ZSH_AI_OPENAI_MODEL="gpt-4.1-mini"
[[ -f ~/.zshrc.secrets ]] && source ~/.zshrc.secrets
source $(brew --prefix)/share/zsh-ai/zsh-ai.plugin.zsh
export OTTER_CLAUDE_CODE_INSTALLER=native

# Obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
