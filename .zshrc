# Environment variables
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export EDITOR=nvim
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@21/21.0.7/libexec/openjdk.jdk/Contents/Home
export MYSQL_HOME=/usr/local/mysql
export ANT_HOME=/opt/homebrew/opt/ant/libexec

# Bat
export BAT_THEME="TwoDark"

# Path
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:$HOME/.config/scripts"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/Applications/zig"
export PATH="$PATH:$HOME/Applications"
# Created by `pipx` on 2024-12-17 02:05:31
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/Applications/clang/bin"


# Pali
export PATH="$PATH:$HOME/Applications/pali"

export XDG_CONFIG_HOME="$HOME/.config"

source "$HOME/.cargo/env"
source "$HOME/.config/settings/alias.sh"

# fzf
source <(fzf --zsh)
# export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --exclude .git --exclude .hg --full-path'
# starship
eval "$(starship init zsh)"
# Zoxide
eval "$(zoxide init zsh)"

bindkey -v

# Zero
export ZERO_HELPER_STATUS=ON

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

export http_proxy=http://127.0.0.1:3128
export https_proxy=http://127.0.0.1:3128
export no_proxy=127.0.0.1,127.0.0.0/8,::1,*.zohomeeting.com,*.zohoassist.com,avcliq.zoho.com,.zohomeeting.com,.zohoassist.com,*.zohopublic.com,*.zohopublic.in,*.zohopublic.eu,*.zohopublic.com.au,*.zohopublic.jp,*.zohopublic.ca,*.zohopublic.sa,us4-wss-accl.zoho.com,us4-wss.zoho.com,us3-wss-accl.zoho.com,us3-wss.zoho.com,in2-wss.zoho.in,in1-wss.zoho.in,eu1-wss.zoho.eu,eu2-wss.zoho.eu,cn2-wss.zoho.com.cn,cn3-wss.zoho.com.cn,au1-wss.zoho.com.au,au2-wss.zoho.com.au,jp1-wss.zoho.jp,jp2-wss.zoho.jp,ca1-wss.zohocloud.ca,ca2-wss.zohocloud.ca,sa1-wss.zoho.sa,sa2-wss.zoho.sa,in1-wss.arattai.in,in2-wss.arattai.in,preus4-wss.zoho.com,preus3-wss.zoho.com,us4-wss-pop.zoho.com,us3-wss-pop.zoho.com,in2-wss-pop.zoho.in,in1-wss-pop.zoho.in,eu1-wss-pop.zoho.eu,eu2-wss-pop.zoho.eu,cn2-wss-pop.zoho.com.cn,cn3-wss-pop.zoho.com.cn,au1-wss-pop.zoho.com.au,au2-wss-pop.zoho.com.au,jp1-wss-pop.zoho.jp,jp2-wss-pop.zoho.jp,ca1-wss-pop.zohocloud.ca,ca2-wss-pop.zohocloud.ca,sa1-wss-pop.zoho.sa,sa2-wss-pop.zoho.sa,in2-prewss-pop.zoho.in,in1-prewss-pop.zoho.in,us4-wss-vod.zoho.com,us3-wss-vod.zoho.com,in2-wss-vod.zoho.in,in1-wss-vod.zoho.in,eu1-wss-vod.zoho.eu,eu2-wss-vod.zoho.eu,cn2-wss-vod.zoho.com.cn,cn3-wss-vod.zoho.com.cn,au1-wss-vod.zoho.com.au,au2-wss-vod.zoho.com.au,jp1-wss-vod.zoho.jp,jp2-wss-vod.zoho.jp,ca1-wss-vod.zohocloud.ca,ca2-wss-vod.zohocloud.ca,sa1-wss-vod.zoho.sa,sa2-wss-vod.zoho.sa,in1-wss-vod.arattai.in,in2-wss-vod.arattai.in,us4-prewss-vod.zoho.com,us3-prewss-vod.zoho.com,*.zohoconference.com
# bun completions
[ -s "/Users/jaya-21208/.bun/_bun" ] && source "/Users/jaya-21208/.bun/_bun"


export JPDA_OPTS='
-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005
-Dcatalina.base=.
-Dcatalina.home=.
-Djava.io.tmpdir=./temp
-Djava.util.logging.config.file=./conf/logging.properties
-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager
-Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false
-Duse.apache=true
-Duse.compression=true
-Duse.memcache=false
-XX:PermSize=250M
-XX:MaxPermSize=250M
-Xms256m
-Xmx512m
-Dfile.encoding=utf8
-Djava.protocol.handler.pkgs=com.zoho.instrument
-Dcom.zoho.instrument=true
-Dcom.zoho.instrument.req.chain=true
-Dservice.name=SDPOnDemand
-noverify
--patch-module java.base=../lib/iotrace.jar
-javaagent:./webapps/ROOT/WEB-INF/prestige/lib/DetectiveInstrumentation.jar
-Dzq.server.domain=https://queue.csez.zohocorpin.com
-Dhttp.proxyHost=127.0.0.1
-Dhttp.proxyPort=3128
-Dhttps.proxyHost=127.0.0.1
-Dhttps.proxyPort=3128
'

