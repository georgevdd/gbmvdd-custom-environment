export PATH=$PATH:~/custom/bin
export PATH=$PATH:~/lib/android-sdk/tools
export PATH=$PATH:/Library/PostgreSQL/9.1/bin
export PATH=$PATH:/Library/Frameworks/GHC.framework/Versions/7.6.3-x86_64/usr/bin
export SVN_EDITOR=emacsclient
alias sd='svn diff --diff-cmd=svn-p4merge-diff'
blender () { /Applications/Blender.app/Contents/MacOS/blender "$@" ; }
[ -f "/Users/georgevdd/.ghcup/env" ] && source "/Users/georgevdd/.ghcup/env" # ghcup-env
