
# copy paste
alias pbcopy = xclip -selection clipboard
alias pbpaste = xclip -selection clipboard -o

# DDTool
alias ddtool = java -cp "$HOME/.config/DDTool/lib/*" test.DDReader -template "$HOME/.config/DDTool/conf/ClassTemplate.vtl"

# Sys
def 'update' [] {
  sudo apt-get update -y; sudo apt-get upgrade -y;
}
def 'clean' [] {
  sudo apt autoremove; sudo apt autoclean;
}
def 'up' [] {
  update; clean;
}

# bottom prompt
# alias prompt-bottom = printf \e[H\ec\e[${LINES}B
# alias clear = clear && prompt-bottom
# alias cls = clear
# prompt-bottom

# clear
alias cls = clear

# Git
alias gs = git status
alias gp = git push
alias gpl = git pull
alias gpo = git push origin
alias gpl = git pull origin
alias gpu = git push upstream
alias gplu = git pull upstream
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
