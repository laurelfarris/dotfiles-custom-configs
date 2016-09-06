alias run='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
alias ipy='ipython3'
alias activate='source env/bin/activate'
alias gs='git status'

export DJANGO_ENV=local

export PATH="./node_modules/.bin:$PATH"

. $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash
