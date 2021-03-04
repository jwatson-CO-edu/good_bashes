########## PREFIX CUSTOMIZATION ###################################################################

force_color_prompt=yes # Pattern "**" used in a pathname expansion will match all files and subdirectories.
shopt -s globstar # ---- Colored prompt

######### DEFAULT SETTINGS ########################################################################



# ... default ~/.bashrc here ...



########## POSTFIX CUSTOMIZATION ##################################################################


##### Bash Behavior #####

## Aliases ##
alias ls='ls -sa' # ------------------------------- List hidden by default in clear coloumns with number of kB
alias cls='clear && clear' # ---------------------- Clear terminal
alias gh='history|grep' # ------------------------- Search grep history
alias trash='mv --force -t ~/.local/share/Trash ' # Send something to the trash bin
alias reload='source ~/.bashrc; echo ~/.bashrc' # - Re-run bash config

## Functions ##
funcFile=$HOME/good_bashes/bash_functions.sh
if [ -e $funcFile ]; then
    source $funcFile
else
    echo 'Could not open function file! Downloading'
    git clone https://github.com/jwatson-CO-edu/good_bashes.git $HOME/good_bashes
    echo 'Custom bash functions now loaded!'
fi


##### Environment #####


# Needed for OCE
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/libs/OCE/lib

# ROS
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/ros/melodic/lib
source /opt/ros/melodic/setup.bash

# Golang
export PATH=$PATH:/usr/local/go/bin


