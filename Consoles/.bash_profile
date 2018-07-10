#NodeJS Aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Various
alias ls='ls -GFha '
alias ov='open -a "Visual Studio Code" '
alias seeBash='ov ~/.bash_profile'

# Git Aliases

# Proxy function

function setProxy {
  export http_proxy='http://user:pss@address:port'
  export https_proxy='http://user:pss@address:port'
}

function unSetProxy {
  unset http_proxy
  unset https_proxy
}

function printProxyNPM {
  npm config get proxy
  npm config get https_proxy
}

function setProxyNPM {
  npm config set proxy='http://user:pss@address:port'
  npm config set https_proxy='http://user:pss@address:port'
  printProxyNPM()
}

function unSetProxyNPM {
  npm config delete proxy
  npm config delete https_proxy
  printProxyNPM()
}

# Other functions

function debugON () {
  echo 'Setting DEBUG=* enviorment variable'
  if [ -z "$1" ]; then
    export DEBUG=*
    printenv DEBUG
  else
    local service=$1
    export DEBUG="$service*"
    printenv DEBUG
  fi
}

function debugOFF () {
  echo 'Turning off the DEBUG'
  unset DEBUG
}