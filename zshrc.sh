alias rOAun='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
#alias ipy='ipython --matplotlib --pylab'
alias activate='source env/bin/activate'

alias chrome='open -a Google\ Chrome'
alias ipy='ipython'
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'
alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias ll='ls -dFHGP ^*.(aux|bbl|blg|log|maf|mtc|mtc0|nav|out|snm|toc)'
alias mv='mv -i'
alias src='source ~/dotfiles/custom-configs/zshrc.sh'


function safe_rm() {
    for fname in $@; do
        command mv $fname ~/.Trash
    done
}
alias rm='safe_rm'

autoload -U zmv
alias mmv='noglob zmv -W'

export DJANGO_ENV=local

export PATH="./node_modules/.bin:$PATH"
export PYTHONPATH="~/Modules/"

LS_COLORS="di=00;38;5;67:ln=00;38;5;167:ex=00;38;5;071:*.png=00;38;5;147:*.jpg=00;38;5;147:*.gz=00;38;5;215:*.tar=00;38;5;215"
export LS_COLORS
export LSCOLORS=exfxcxdxgxegedabagacad
