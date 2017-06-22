alias rOAun='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
#alias ipy='ipython --matplotlib --pylab'
alias activate='source env/bin/activate'
alias gs='git status'

alias src='source ~/dotfiles/custom-configs/zshrc.sh'
alias chrome='open -n -a Google\ Chrome'
alias ipy='ipython'
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'
alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias ll='ls -dFHGP ^*.(aux|bbl|blg|log|maf|mtc*|nav|out|snm|toc)'
alias l1='ls -1dFHGP ^*.(aux|bbl|blg|log|maf|mtc*|nav|out|snm|toc)'
alias mv='mv -i'

alias todo='open -g ${HOME}/Google\ Drive/Research/General/action_items.pdf'

function safe_rm() {
    for fname in $@; do
        if [[ `basename $PWD` != .Trash ]]; then
            command mv $fname ${HOME}/.Trash/
        else
            command rm $fname
        fi
    done
}
alias rm='safe_rm'

function cleanup() {

    # Permanently delete files moved to Trash more than 1 month ago
    for f in `find ${HOME}/.Trash -type f -atime +30`; do
        command rm ${f}
        echo "Permanently deleted file ${f}"
    done
    for d in `find ${HOME}/.Trash -maxdepth 2 -mindepth 2`; do
        mv $d ${HOME}/.Trash
    done
    find ${HOME}/.Trash -type d -empty -delete
}
#cleanup

function rename() {
    for f in treteupp.*; do
        filename="${f%.*}"
        ext="${f#*.}"
        mv $f wrong_writeup.$ext
    done
}

function spaces_suck() {
    ls -1 *\ * | while read line; do
    new=` echo $line | tr ' ' '_' `
    mv $line $new
done
}

# Open a pdf in preview without having to worry about deleting it later
function get() {
    dir=${HOME}/Temp/
    filenumber=`date +'%s'`
    file=${HOME}/Temp/temp${filenumber}.pdf
    curl --create-dirs -o ${file} $1
    chmod 444 ${file}
    open ${file}
    # Add an option to save if desired, and to not remove until Preview
    #    window containing this file is closed> open --args (maybe...)
    # Or just delete from Temp/ after 24 hours...
    rm ${file}
}


autoload -U zmv
alias mmv='noglob zmv -W'

export DJANGO_ENV=local

export PATH="./node_modules/.bin:$PATH"

LS_COLORS="di=00;38;5;67:ln=00;38;5;167:ex=00;38;5;071:*.png=00;38;5;147:*.jpg=00;38;5;147:*.gz=00;38;5;215:*.tar=00;38;5;215"
export LS_COLORS
export LSCOLORS=exfxcxdxgxegedabagacad
export GPG_TTY=$(tty)
