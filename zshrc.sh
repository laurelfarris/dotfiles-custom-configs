alias rOAun='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
#alias ipy='ipython --matplotlib --pylab'
alias activate='source env/bin/activate'

alias ipy='ipython'
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'
alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
alias l1='ls -dFHGP ^*.(aux|bbl|blg|log|maf|mtc|mtc0|nav|out|snm|toc)'
alias ll='ls -dFHGP1 ^*.(aux|bbl|blg|log|maf|mtc|mtc0|nav|out|snm|toc)'
alias src='source ~/dotfiles/custom-configs/zshrc.sh'

function safe_rm() {
    for fname in $@; do
        mv $fname ~/.Trash
    done
}
alias rm='safe_rm'

autoload -U zmv
alias mmv='noglob zmv -W'

export DJANGO_ENV=local

export PATH="./node_modules/.bin:$PATH"
export PYTHONPATH="~/Modules/"

# t-colors is the style used by Zsh to set completion colors,
# it has its own funny syntax.
# Use the following to set it to match your LS_COLORS:

#export LSCOLORS="di=38;5;200:ln=38;5;167:ex=38;5;071:*.png=38;5;147:*.jpg=38;5;147:*.gz=38;5;215:*.tar=38;5;215"
zstyle ':completion:*' list-colors 'di=00;38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;147:*.jpg=38;5;147:*.gz=38;5;215:*.tar=38;5;215'
