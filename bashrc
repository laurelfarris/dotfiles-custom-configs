#. /home/local/etc/bashrc

alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias src='. ~/.bashrc'
alias delete_pyc='find . -iname \*.pyc -exec mv \{\} ~/.trash \+'

export CLICOLOR=1
LS_COLORS="di=38;5;67:ln=38;5;167:ex=38;5;071:*.png=38;5;103:*.jpg=38;5;103:*.gz=38;5;215:*.tar=38;5;215"
export LS_COLORS

function safe_rm() { mv $@ ~/.trash; }
alias rm='safe_rm'

function mypath() { echo "${PATH//:/$'\n'}"; }

function my_vi() {
    #myfile=$1
    #echo -ne "\e]0; VIM: ${myfile} \007";
    #vim ${myfile}
    echo -ne "\e]0; VIM: $1 \007";
    vim $1
}
alias vi='my_vi'

#function ipython() {
#    echo -ne "\e]0; iPython \007";
#    ipython
#}

# Enable tab completion
source ~/dotfiles/custom-configs/git-completion.bash
# Change command prompt
source ~/dotfiles/custom-configs/git-prompt
# Unstaged (*) and staged (+) changes will be shown next to the branch name.
export GIT_PS1_SHOWDIRTYSTATE=1

# Colors
function EXT_COLOR () { echo -ne "\[\e[38;5;$1m\]"; }
#wh=`EXT_COLOR 254`
#lgray=`EXT_COLOR 248`
#dgray=`EXT_COLOR 238`
#orange=`EXT_COLOR 215`
#pur=`EXT_COLOR 097`
#blue=`EXT_COLOR 060`
#green=`EXT_COLOR 071`
#yellow=`EXT_COLOR 229`
#pmt=`EXT_COLOR 60`
wh=$(EXT_COLOR 254)
lgray=$(EXT_COLOR 248)
dgray=$(EXT_COLOR 238)
orange=$(EXT_COLOR 215)
pur=$(EXT_COLOR 097)
blue=$(EXT_COLOR 060)
green=$(EXT_COLOR 071)
yellow=$(EXT_COLOR 229)
pmt=$(EXT_COLOR 60)
end="\[\e[0m\]"

Bold="\[\e[1m\]"
Normal="\[\e[0m\]"
Text="\[\e(B\]"
Char="\[\e(0\]"
MY_RULE="\e(0q\e(B"
#Arrow=$(echo -e "\x26")
# ❤ ❂ ✱ ❖ ❇ ❱ ➤
pic=${Normal}${yellow}✱${dgray}${Bold}
Arrow=❱

#function make_title() { echo -ne "\e]0;@${HOSTNAME%%.*}: \w \007"; }
    #history 2 | head -1 | awk '{if ($2 == "vi") {print $2;}}'
    #my_title=$(echo -ne "\e]0; ${my_command}\007")
    #my_command=$(history 1 | head -1 | awk '{print $2;}')

### Make a sweet prompt
set_prompt () {
    #my_shell=$(ps -p $$ | awk 'FNR == 2 {print $4}')
    my_shell=$0
    my_title=$(echo -ne "\e]1; \W/\007\e]2; $my_shell: \w\007")

    my_host="@${HOSTNAME%%.*}"
    num=${#my_host}

    length=$(($(tput cols)-($num + 4)))
    MY_LINE=""
    for ((i=1; i<=${length}; i++))
    do
        printf -v PIECE '%b' ${MY_RULE}
        MY_LINE="${Bold}${dgray}${MY_LINE}${PIECE}"
    done
    LINE1="${MY_LINE}${Text}(${blue}$my_host${dgray})${Char}qq\rlqq${Text}(${pmt}\w${dgray})\n"
    LINE3="${Char}mqq${Text}${Arrow} ${Normal}${wh}"
    PS1=${my_title}${LINE1}${LINE3};
}
#    if [ -d .git ]; then
#        LINE2="${Char}tqq${Text}(${blue}$(__git_ps1) ${dgray})\n"
#    else
#        LINE2="\r"
#    fi;
PROMPT_COMMAND=set_prompt
