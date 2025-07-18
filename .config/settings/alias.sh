# copy paste
# alias pbcopy='xclip -selection clipboard'
# alias pbpaste='xclip -selection clipboard -o'

# DDTool
# alias ddtool='java -cp "$HOME/.config/DDTool/lib/*" test.DDReader -template "$HOME/.config/DDTool/conf/ClassTemplate.vtl"'

# Sys
# alias update='sudo apt-get update -y && sudo apt-get upgrade -y'
# alias clean='sudo apt autoremove && sudo apt autoclean'
# alias up='update && clean'

alias update='brew update && brew upgrade'
alias clean='brew cleanup --prune=all'
alias up='update && clean'

# clear
alias cls='clear'
# alias cls='clear && prompt-bottom'

# Zoxide
alias cd=z

# exa
alias ls=exa

# Git
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gpo='git push origin'
alias gpl='git pull origin'
alias gpu='git push upstream'
alias gplu='git pull upstream'
alias gl='git log --oneline --graph --all'

# Mysql
alias sql='mysql -u root'
alias start_sql='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias stop_sql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'
alias restart_sql='stop_sql && start_sql'

# Hg
alias hl='hg log --graph --style compact -b $(hg branch)'
alias hs='hg stat -m'
alias hdiff='hg st -mn | fzf --preview="hg diff {} | bat --language=diff -f -p"'
alias cdiff='hg log -p -r'
alias hamend='hg commit --amend --no-edit'

# python
# alias python=python3
alias pip=pip3

alias ff='fzf --preview "bat --style=numbers --color=always {}"'

alias prompt-bottom='printf "\n%.0s" {1..100}'

# Idea
alias idea="/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS/idea"

# scripts
alias logs='less +F $HOME/builds/deployment/$(ls $HOME/builds/deployment | fzf)/AdventNet/Sas/logs/zoho-SDPOnDemand-application0.txt'

alias pod=podman

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias deployment='cd $HOME/builds/deployment && cd $(ls | fzf)'

function findc() {
	local file
	file="$(hg log -b "$(hg branch)" -r "not merge()" --template "{files % '{file}\n'}" | sort -u | uniq | fzf)"
	[ -n "$file" ] && hg log -r "sort(file('$file') and branch('$(hg branch)') and not merge(), -rev)"
}

