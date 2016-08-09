#. /home/local/etc/bashrc

export TERM=xterm-256color

export PYTHONPATH="${PYTHONPATH}:/home/users/laurel07/research/Modules/"

# Alias list
alias vi='vim'
alias open='gnome-open'
alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias solar='ssh -Y laurel07@solarstorm.nmsu.edu'
alias src='source ~/.bashrc'
alias ls='ls -FGH --color=auto'
alias ll='ls -FGH --color=auto --ignore=*.{aux,bbl,blg,log,nav,out,snm,toc}'
alias l1='ls -1FGH --color=auto --ignore=*.{aux,bbl,blg,log,nav,out,snm,toc}'
alias lsd='ls --group-directories-first'
alias delete_pyc='find . -iname \*.pyc -exec rm \{\} \+'
#alias rm='rm'

# Functions
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


### Make a sweet prompt

# Enable tab completion
source ~/dotfiles-custom-configs/git-completion.bash
# Change command prompt
source ~/dotfiles-custom-configs/git-prompt.sh
# Unstaged (*) and staged (+) changes will be shown next to the branch name.
export GIT_PS1_SHOWDIRTYSTATE=1

Bold="\[\e[1m\]"
Normal="\[\e[0m\]"
Text="\[\e(B\]"
Char="\[\e(0\]"
MY_RULE="\e(0q\e(B"
#Arrow=$(echo -e "\x26")
# ❤ ❂ ✱ ❖ ❇
pic=${Normal}${yellow}❤${dgray}${Bold}
Arrow=❱

PROMPT_COMMAND=set_prompt
set_prompt () {
    echo -ne "\e]0; @${HOSTNAME%%.*}: ${PWD}\007"
    length=$(($(tput cols)-4))
    MY_LINE=""
    for ((i=1; i<=$length; i++))
    do
        printf -v PIECE '%b' ${MY_RULE}
        MY_LINE="${dgray}$MY_LINE$PIECE"
    done
    LINE1="${Bold}${MY_LINE}(${pic})${Char}q\rlqq${Text}(${pmt}\w${dgray})\n"
    LINE2="${Char}tqq${Text}(${blue}$(__git_ps1) ${dgray})\n"
    LINE3="${Char}mqq${Text}${Arrow} ${Normal}${wh}"
    if [ -d .git ]; then
        PS1=${LINE1}${LINE2}${LINE3};
    else
        PS1=${LINE1}${LINE3};
    fi;
}
