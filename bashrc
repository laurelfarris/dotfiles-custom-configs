#. /home/local/etc/bashrc

#export TERM=xterm-256color

set -o vi
PYTHONPATH="${PYTHONPATH}:/home/users/laurel07/research/Modules/"
export PYTHONPATH
IPYTHONDIR="/home/users/laurel07/.ipython"
export IPYTHONDIR

#alias vi='my_vim'
alias term='gnome-terminal'
alias term1='gnome-terminal --window --geometry 102x54+0+0 -c exec bash &'
alias term2='gnome-terminal --window --geometry 102x54-0-0 &'
alias open='gnome-open'
alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias acrux='ssh -Y laurel07@acrux.nmsu.edu'
alias solar='ssh -Y laurel07@solarstorm.nmsu.edu'
alias src='source ~/.bashrc'
#alias ls='ls -FGH --group-directories-first --color=auto'
alias ls='ls -FGH'
alias ll='ls -FGH --group-directories-first --color=auto --ignore=*.{aux,bbl,blg,log,nav,out,snm,toc}'
alias l1='ls -1FGH --group-directories-first --color=auto --ignore=*.{aux,bbl,blg,log,nav,out,snm,toc}'
#alias lsd='ls --group-directories-first'
alias delete_pyc='find . -iname \*.pyc -exec rm \{\} \+'

function safe_rm() { mv $1 ~/.trash; }
alias rm='safe_rm'

function mypath() { echo "${PATH//:/$'\n'}"; }

# Create my own dir_colors file, echo here and turn into a variable somehow?
#LS_COLORS=$LS_COLORS:"di=38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;147:*.jpg=38;5;147:*.gz=38;5;215:*.tar=38;5;215"
LS_COLORS="di=38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;147:*.jpg=38;5;147:*.gz=38;5;215:*.tar=38;5;215"
export LS_COLORS

# Colors
function EXT_COLOR () { echo -ne "\[\e[38;5;$1m\]"; }
wh=`EXT_COLOR 254`
lgray=`EXT_COLOR 248`
dgray=`EXT_COLOR 238`
orange=`EXT_COLOR 215`
pur=`EXT_COLOR 097`
blue=`EXT_COLOR 060`
green=`EXT_COLOR 071`
yellow=`EXT_COLOR 229`
pmt=`EXT_COLOR 60`
end="\[\e[0m\]"

Bold="\[\e[1m\]"
Normal="\[\e[0m\]"
Text="\[\e(B\]"
Char="\[\e(0\]"
MY_RULE="\e(0q\e(B"
#Arrow=$(echo -e "\x26")
# ❤ ❂ ✱ ❖ ❇ ❱ ➤
pic=${Normal}${yellow}✱${dgray}${Bold}
Arrow=➤

#function vi() {
#    echo -ne "\e]0; ${1} \007";
#    vim ${1}
#}
#function ipython() {
#    echo -ne "\e]0; iPython \007";
#    ipython
#}

# Enable tab completion
source ~/dotfiles/custom-configs/git-completion.bash
# Change command prompt
source ~/dotfiles/custom-configs/git-prompt.sh
# Unstaged (*) and staged (+) changes will be shown next to the branch name.
export GIT_PS1_SHOWDIRTYSTATE=1

#function make_title() { echo -ne "\e]0;@${HOSTNAME%%.*}: \w \007"; }
    #history 2 | head -1 | awk '{if ($2 == "vi") {print $2;}}'
    #my_title=$(echo -ne "\e]0; ${my_command}\007")
    #my_command=$(history 1 | head -1 | awk '{print $2;}')

### Make a sweet prompt

set_prompt () {
    my_title=$(echo -ne "\e]0; @${HOSTNAME%%.*}: \w\007")
    length=$(($(tput cols)-4))
    MY_LINE=""
    for ((i=1; i<=${length}; i++))
    do
        printf -v PIECE '%b' ${MY_RULE}
        MY_LINE="${dgray}${MY_LINE}${PIECE}"
    done
    LINE1="${Bold}${MY_LINE}(${pic})${Char}q\rlqq${Text}(${pmt}@\h:\w${dgray})\n"
    #LINE2="${Char}tqq${Text}(${blue}$(__git_ps1) ${dgray})\n"
    LINE3="${Char}mqq${Text}${Arrow} ${Normal}${wh}"
    # if git then Line2 as below, else Line2 = \r
    if [ -d .git ]; then
        LINE2="${Char}tqq${Text}(${blue}$(__git_ps1) ${dgray})\n"
        #PS1=${LINE1}${LINE2}${LINE3};
    else
        LINE2="\r"
        #PS1=${LINE1}${LINE3};
    fi;
    PS1=${my_title}${LINE1}${LINE2}${LINE3};
}
PROMPT_COMMAND=set_prompt
