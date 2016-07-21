#. /home/local/etc/bashrc

export TERM=xterm-256color

#export MESA_DIR=/home/hyades/jasonj/mesa
#export PGPLOT_DIR=/home/hyades/jasonj/mesa/utils/pgplot
#export MESASDK_ROOT=/home/hyades/jasonj/mesa/utils/mesasdk
#source $MESASDK_ROOT/bin/mesasdk_init.sh
#export OMP_NUM_THREADS=2

# Alias list
alias open='gnome-open'
alias solar='ssh -Y laurel07@solarstorm.nmsu.edu'
alias src='source ~/.bashrc'
alias ls='ls -FGH --color=auto'
alias ll='ls -FGH --color=auto --ignore=*.{aux,log,nav,out,snm,toc}'
alias lll='ls -1FGH --color=auto --ignore=*.{aux,log,nav,out,snm,toc}'
alias rm='rm'

# Functions
function mypath() { echo "${PATH//:/$'\n'}"; }

# Colors
function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }

wh=`EXT_COLOR 254`
#gray=`EXT_COLOR 240`
gray=`EXT_COLOR 245`
orange=`EXT_COLOR 215`
pur=`EXT_COLOR 097`
blue=`EXT_COLOR 060`
green=`EXT_COLOR 071`

# Create my own dir_colors file, echo here and turn into a variable somehow?
LS_COLORS=$LS_COLORS:'di=38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;147:*.jpg=38;5;147:*.gz=38;5;215:*.tar=38;5;215'
export LS_COLORS

# Make a sweet prompt

Text='\[\e(B\]'
Char='\[\e(0\]'
Line1='\e(0q\e(B'
Top=$'\U250C\U2500\U2500'
Mid=$'\U251C\U2500\U2500'
Line=$'\U2500\U2500\U2500'
Segment=$'\U2500'
#Arrow=$'\U25BA'
#Arrow=$(perl -C0 -le 'print "\x{26}"')
#Arrow=$(echo -e "\x26")
#Arrow=$'\x26'
Arrow=$'☠'
Bottom=$'\U2514\U2500\U2500'

# Enable tab completion
source ~/git-completion.bash

# Change command prompt
source ~/git-prompt.sh

# Unstaged (*) and staged (+) changes will be shown next to the branch name.
export GIT_PS1_SHOWDIRTYSTATE=1

PROMPT_COMMAND=set_prompt
set_prompt () {
    length=$(($(tput cols)-13))
    MY_LINE=""
    for ((i=1; i<=$length; i++))
    do
        printf -v PIECE '%b' ${Line1}
        MY_LINE="$MY_LINE$PIECE"
        #MY_LINE="${MY_LINE}${Segment}"
    done
PS1="${gray}${MY_LINE}(\t)${Char}qqq\rlqq${Text}(\u@\h:\w)\n\
${Char}tqq${Text}(${blue}$(__git_ps1) ${gray})\n\
${Char}mqq${Text}${Arrow} ${wh}"

}
bv=$(echo $BASH_VERSION | awk '{print substr($0,1,1)}')
set_prompt_old () {
    length=$(($(tput cols)-13))
    MY_LINE=""
    for ((i=1; i<=$length; i++))
    do
        printf -v PIECE '%b' ${Line1}
        MY_LINE="$MY_LINE$PIECE"
        #MY_LINE="${MY_LINE}${Segment}"
    done
    if [ $bv -ge 5 ]; then
        PS1="${green}${MY_LINE}(\t)${Char}qqq\rlqq${Text}(\u@\h:\w)\n${Char}${Arrow}${Text} ${wh}"
    else
        PS1="${gray}${MY_LINE}(\t)${Char}qqq\rlqq${Text}(\u@\h:\w)\n${Char}mqq${Text}> ${wh}"
    fi
}
