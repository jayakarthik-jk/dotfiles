# custom settings files
for setting_file in ~/.config/settings/*.sh; do
  . "$setting_file"
done

# Environment variables
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export EDITOR=nvim
export JAVA_HOME=/opt/homebrew/opt/openjdk@21
. "$HOME/.cargo/env"
export MYSQL_HOME=/usr/local/mysql

# Path
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="$HOME/.config/scripts:$PATH"
# Created by `pipx` on 2024-12-17 02:05:31
export PATH="$PATH:/Users/jaya-21208/.local/bin"


# Zero
export http_proxy=http://127.0.0.1:3128
export https_proxy=http://127.0.0.1:3128
export no_proxy=127.0.0.1,127.0.0.0/8,::1,*.zohomeeting.com,*.zohoassist.com,avcliq.zoho.com,.zohomeeting.com,.zohoassist.com,*.zohopublic.com,*.zohopublic.in,*.zohopublic.eu,*.zohopublic.com.au,*.zohopublic.jp,*.zohopublic.ca,*.zohopublic.sa,us4-wss-accl.zoho.com,us4-wss.zoho.com,us3-wss-accl.zoho.com,us3-wss.zoho.com,in2-wss.zoho.in,in1-wss.zoho.in,eu1-wss.zoho.eu,eu2-wss.zoho.eu,cn2-wss.zoho.com.cn,cn3-wss.zoho.com.cn,au1-wss.zoho.com.au,au2-wss.zoho.com.au,jp1-wss.zoho.jp,jp2-wss.zoho.jp,ca1-wss.zohocloud.ca,ca2-wss.zohocloud.ca,sa1-wss.zoho.sa,sa2-wss.zoho.sa,in1-wss.arattai.in,in2-wss.arattai.in,preus4-wss.zoho.com,preus3-wss.zoho.com,us4-wss-pop.zoho.com,us3-wss-pop.zoho.com,in2-wss-pop.zoho.in,in1-wss-pop.zoho.in,eu1-wss-pop.zoho.eu,eu2-wss-pop.zoho.eu,cn2-wss-pop.zoho.com.cn,cn3-wss-pop.zoho.com.cn,au1-wss-pop.zoho.com.au,au2-wss-pop.zoho.com.au,jp1-wss-pop.zoho.jp,jp2-wss-pop.zoho.jp,ca1-wss-pop.zohocloud.ca,ca2-wss-pop.zohocloud.ca,sa1-wss-pop.zoho.sa,sa2-wss-pop.zoho.sa,in2-prewss-pop.zoho.in,in1-prewss-pop.zoho.in,us4-wss-vod.zoho.com,us3-wss-vod.zoho.com,in2-wss-vod.zoho.in,in1-wss-vod.zoho.in,eu1-wss-vod.zoho.eu,eu2-wss-vod.zoho.eu,cn2-wss-vod.zoho.com.cn,cn3-wss-vod.zoho.com.cn,au1-wss-vod.zoho.com.au,au2-wss-vod.zoho.com.au,jp1-wss-vod.zoho.jp,jp2-wss-vod.zoho.jp,ca1-wss-vod.zohocloud.ca,ca2-wss-vod.zohocloud.ca,sa1-wss-vod.zoho.sa,sa2-wss-vod.zoho.sa,in1-wss-vod.arattai.in,in2-wss-vod.arattai.in,us4-prewss-vod.zoho.com,us3-prewss-vod.zoho.com,*.zohoconference.com

export XDG_CONFIG_HOME="$HOME/.config"

# fzf
source <(fzf --zsh)

# starship
eval "$(starship init zsh)"
# Zoxide
eval "$(zoxide init zsh)"
