alias rOAun='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
#alias ipy='ipython --matplotlib --pylab'
alias activate='source env/bin/activate'
alias gs='git status'

alias chrome='open -a Google\ Chrome'
alias ipy='ipython'
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'
alias astro='ssh laurel07@astronomy.nmsu.edu'
alias ll='ls -dFHGP ^*.(aux|bbl|blg|log|maf|mtc|mtc0|nav|out|snm|toc)'
alias mv='mv -i'
alias src='source ~/dotfiles/custom-configs/zshrc.sh'

function cleanup() {
    for f in $( find $HOME/.trash -type f -maxdepth 1 -mtime +30 )
    do command rm $f; done
}
cleanup

function rename() {
    for f in treteupp.*; do
        filename="${f%.*}"
        ext="${f#*.}"
        mv $f wrong_writeup.$ext
    done
}

function spaces_suck() {
    ls -1 *\ * | while read line; do
    new=$(echo $line | tr ' ' '_')
    mv $line $new
done

}


function safe_rm() {
    for fname in $@; do
        if [[ $(basename $PWD) != .Trash ]]; then
            command mv $fname ~/.Trash; else rm $fname
        fi
    done
}
alias rm='safe_rm'

autoload -U zmv
alias mmv='noglob zmv -W'

export DJANGO_ENV=local

export PATH="./node_modules/.bin:$PATH"

LS_COLORS="di=00;38;5;67:ln=00;38;5;167:ex=00;38;5;071:*.png=00;38;5;147:*.jpg=00;38;5;147:*.gz=00;38;5;215:*.tar=00;38;5;215"
export LS_COLORS
export LSCOLORS=exfxcxdxgxegedabagacad
export GPG_TTY=$(tty)
export TERM=xterm-256color
[ -n $TMUX ] && export TERM=screen-256color
