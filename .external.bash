COLOR_RESET='\e[0m'
COLOR_RED='\e[01;31m' #don't use with green background
COLOR_GREEN='\e[01;32m'
COLOR_YELLOW='\e[01;33m'
COLOR_BLUE='\e[01;34m'
COLOR_MAGENTA='\e[01;35m'
COLOR_CYAN='\e[01;36m'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f "$DIR/.git.bash" ]; then
	source $DIR/.git.bash
fi

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[01;97m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "
