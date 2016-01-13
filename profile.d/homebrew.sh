# homebrew.sh

# check if brew is installed and if it is set sbin in the path
if brew info 1> /dev/null; then
  export PATH="/usr/local/sbin:$PATH"
fi
