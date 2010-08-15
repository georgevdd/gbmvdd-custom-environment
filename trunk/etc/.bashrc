export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
export M2=$M2_HOME/bin

export PATH=$PATH:~/custom/bin
export PATH=$PATH:~/lib/android-sdk/tools
export PATH=$PATH:$M2
export SVN_EDITOR=emacsclient
alias sd='svn diff --diff-cmd=svn-p4merge-diff'
