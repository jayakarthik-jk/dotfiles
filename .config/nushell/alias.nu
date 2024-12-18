# copy paste
# alias pbcopy = xclip -selection clipboard
# alias pbpaste = xclip -selection clipboard -o

# Sys
def 'update' [] {
	brew update; brew upgrade;
	# sudo apt-get update -y; sudo apt-get upgrade -y;
}
def 'clean' [] {
	brew cleanup --prune=all
	# sudo apt autoremove; sudo apt autoclean;
}
def 'up' [] {
	update; clean;
}

# clear
alias cls = clear

# Git
alias gs = git status
alias gp = git push
alias gpl = git pull
alias gpo = git push origin
alias gpl = git pull origin
alias gpu = git push up
alias gplu = git pull up
alias log = git log --oneline --graph --all

# Mysql
alias sql = mysql -u root

# Hg
alias hs = hg stat -m
alias cdiff = hg log -p -r
alias code = codium
alias hamend = hg commit --amend --no-edit

def 'hl' [] {
  let current_branch = hg branch;
  hg log --graph --style compact -b $current_branch;
}

def 'hdiff' [] {
  let selected = hs | sed "s/^M //" | fzf
  hg diff $selected
}

# python
alias python = python3

# Zoxide
alias cd = z
