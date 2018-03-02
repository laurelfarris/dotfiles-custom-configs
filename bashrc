#. /home/local/etc/bashrc

# Press spacebar after typing, e.g. !! to retrieve previous command.
# This will expand the command before executing it.
bind Space:magic-space

alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias src='. ~/.bashrc'
alias delete_pyc='find /home/users/laurel07 -iname \*.pyc -execdir mv {} ~/.trash \+'

export CLICOLOR=1
LS_COLORS="di=38;5;67:ln=38;5;167:ex=38;5;255:*.pdf=38;5;107:*.png=38;5;107:*.jpg=38;5;107:*.gz=38;5;215:*.tar=38;5;215"
export LS_COLORS

# Do the same thing! Which is better?
function mypath() { echo "${PATH//:/$'\n'}"; }
function mypath2() { echo $PATH | tr ":" "\n"; }

function safe_rm() { command mv -f $@ ~/.Trash; }
alias rm='safe_rm'

function cleanup() {
    find ${HOME}/.Trash -type f -atime +30 -delete
    find ${HOME}/.Trash -mindepth 1 -empty -delete
}

function my_vi() {
    if swap | grep -q $1; then
        echo "You're already editing this file, dumbass."
    else
        echo -ne "\e]0; VIM: \"$1\"\007";
        vim $1
    fi
    }
alias vi='my_vi'


## Git stuff
# Enable tab completion
. $HOME/dotfiles/custom-configs/git-completion.bash
# Change command prompt
. $HOME/dotfiles/custom-configs/git-prompt.bash
# Unstaged (*) and staged (+) changes will be shown next to the branch name.
export GIT_PS1_SHOWDIRTYSTATE=1

## Colors
function COLOR () { echo -ne "\[\e[38;5;$1m\]"; }
dgray=$(COLOR 238)
lgray=$(COLOR 245)
purple=$(COLOR 060)
blue=$(COLOR 067)
dgreen=$(COLOR 065)
gray1=$(COLOR 145)
gray2=$(COLOR 059)
pink=$(COLOR 133)
end="\[\e[0m\]"
# normal="\[\e[0m\]" --> same as end!

bold="\[\e[1m\]"
text="\[\e(B\]"
char="\[\e(0\]"
#segment="${bold}${dgray}\e(0q\e(B"
segment="${bold}${dgray}${char}q"
# ❤ ❂ ✱ ❖ ❇ ❱ ➤
arrow=❱

top=${bold}${cyan}${char}lqq
mid=${bold}${purple}${char}tqq
low=${bold}${blue}${char}mqq

#heart=$(echo -e "\xE2\x9D\xA4")
#PS1="\[\e[38;5;145m\]\u@\h \[\e[38;5;133m\]${heart}\[\e[38;5;145m\] \w\n-->${end} "


### Make a sweet prompt

#my_title=$(echo -ne "\e]0; \d \007")
set_prompt () {
    #my_title=$(echo -n "\e]0; $(date +%H:%M:%S) \007")
    my_title=$(echo -ne "\e]0; \w \007")
    my_host="@${HOSTNAME%%.*}"
    num=${#my_host}
    length=$(( $(tput cols)-(${num} + 4) ))
    my_line=""
    for ((i=1; i<=${length}; i++)); do
        my_line+=${segment}
    done

#    my_time=echo "$(date +%a), $(date +%b) $(date +%d)  $(date +%R)"
    line1="${my_line}${text}(${lgray}@\h${dgray})${char}qq\rlqq${text}(${lgray}\w${dgray})\n"
#    line2="\r"
    line2="${char}tqq${text}(${lgray}$(__git_ps1) ${dgray})\n"
    line3="${char}mqq${text}${arrow}${end} "

    PS1=${my_title}${line1}${line2}${line3};
}
PROMPT_COMMAND=set_prompt
