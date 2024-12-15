# # copy paste
# alias pbcopy='xclip -selection clipboard'
# alias pbpaste='xclip -selection clipboard -o'
#
# # DDTool
# alias ddtool='java -cp "$HOME/.config/DDTool/lib/*" test.DDReader -template "$HOME/.config/DDTool/conf/ClassTemplate.vtl"'
#
# # Sys
# alias update='sudo apt-get update -y && sudo apt-get upgrade -y'
# alias clean='sudo apt autoremove && sudo apt autoclean'
# alias up='update && clean'
#
# # bottom prompt
# # alias prompt-bottom='printf '\e[H\ec\e[${LINES}B''
# # alias clear='clear && prompt-bottom'
# # prompt-bottom

# clear
alias cls='clear'

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
alias log='git log --oneline --graph --all'

# Mysql
alias sql='mysql -u root'

# Hg
alias hl='hg log --graph --style compact -b $(hg branch)'
alias hs='hg stat -m'
alias hdiff='hg diff $(hs | sed "s/^M //" | fzf)'
alias cdiff='hg log -p -r'
alias hamend='hg commit --amend --no-edit'

# python
alias python=python3

alias ff='fzf --preview "bat --style=numbers --color=always {}"'
