# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

[[ -s "/home/kuroyanagi/.rvm/scripts/rvm" ]] && source "/home/kuroyanagi/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk
# Initialization for FDK command line tools.Mon Nov 23 22:10:45 2015
FDK_EXE="/home/euledge/bin/FDK/Tools/linux"
PATH=${PATH}:"/home/euledge/bin/FDK/Tools/linux"
export PATH
export FDK_EXE
