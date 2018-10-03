SAVEHIST=10000

# Someone else's (Dustin's?) aliases.
alias rOAun='./manage.py runserver 0.0.0.0:8000'
alias mkenv='mkvirtualenv --python=/usr/local/bin/python3 `basename $PWD` && setvirtualenvproject'
alias pycclean='find . -name "*.pyc" -exec rm {} \;'
alias dsh='./manage.py shell'
alias sm='./manage.py schemamigration'
alias mm='./manage.py makemigrations'
#alias ipy='ipython --matplotlib --pylab'
alias activate='source env/bin/activate'

# Don't really need this alias (26 March 2018).
#alias gs='git status'

# My aliases
alias src='source ~/dotfiles/custom-configs/zshrc.sh'
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'
alias astro='ssh -X -Y laurel07@astronomy.nmsu.edu'
alias work='cd ${HOME}/Dropbox/Research/Codes/'
alias ll='ls -dFHGP ^*.(aux|bbl|blg|cb|cb2|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias l1='ls -1dFHGP ^*.(aux|bbl|blg|cb|cb2|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias mv='mv -i'

function getfigures() {
    figurepath=${HOME}/Dropbox/Figures/Temp/
    scp laurel07@astronomy.nmsu.edu:~/\*.pdf $figurepath
    #open ${figurepath}/*.pdf
}

function fuckspaces() {

    # find file/directory names that contain spaces,
    # (contents of current directory only).
    find . -mindepth 1 -maxdepth 1 -iname "*\ *" | while read line; do

    # current file name
    old=${line:s/\*//}

    # new file name (replace spaces with underscores).
    new=` echo $old | tr ' ' '_' `

    # rename old filename with new filename.
    mv $old $new

done
}

# 16 August 2018 - This should go somewhere other than zshrc file:
function move_list() {

    #for file in `cat _list_of_old_figures.txt | head`; do
    for file in `cat _list_of_old_figures.txt`; do
        #ls $file
        mv $file Old/
        # remove name of file from list somehow... sed?
    done
}

function safe_rm() {
    for fname in $@; do
        if [[ `basename $PWD` != .Trash ]]; then
            touch -ac $fname
            command mv $fname ${HOME}/.Trash/
        else
            command rm $fname
        fi
    done
}
alias rm='safe_rm'

# Execute command from directory without cd-ing into it?
function mycd() {
    echo "#!/bin/bash; cd $1; exec $2" > /usr/local/bin/execindirectory
    chmod +x /usr/local/bin/execindirectory
}

# Permanently delete files that have been in .Trash for more than a month.
function prm() {
    # nospaces --> needs to be run from inside .Trash directory

    # Creating variable for num. files before and after prm (09/11/18)
    let "files1=`ls ${HOME}/.Trash | wc -l`"

    find ${HOME}/.Trash -atime +30 -exec basename {} \;
    find ${HOME}/.Trash -atime +30 -delete

    # Set mindepth to 1 to prevent ~/.Trash itself from being deleted.
    find ${HOME}/.Trash -mindepth 1 -type d -empty -delete

    let "files2=`ls ${HOME}/.Trash | wc -l`"
    let "diff=$files1 - $files2"

    echo ${files1} ' files in Trash.'
    echo ${files2} ' files in Trash after deleting old ones.'
    echo "${diff} files permanently deleted."
}

# WTF is this? Might be something I copied off the interwebs (26 March 2018).
function rename() {
    for f in treteupp.*; do
        filename="${f%.*}"
        ext="${f#*.}"
        mv $f wrong_writeup.$ext
    done
}

# Download pdf, open in preview, and immediately delete.
function get() {
    dir=${HOME}/Temp/
    filenumber=`date +'%s'`
    file=${HOME}/Temp/temp${filenumber}.pdf
    curl --create-dirs -o ${file} $1
    chmod 444 ${file}
    open -g ${file}
    # Add an option to save if desired, and to not remove until Preview
    #    window containing this file is closed> open --args (maybe...)
    # Or just delete from Temp/ after 24 hours...
    # rm ${file}
}


# ???
autoload -U zmv
alias mmv='noglob zmv -W'
export DJANGO_ENV=local
export PATH="./node_modules/.bin:$PATH"

# Can't remember if this was actually working or not... (26 March 2018).
LS_COLORS="di=00;38;5;67:ln=00;38;5;167:ex=00;38;5;071:*.png=00;38;5;147:*.jpg=00;38;5;147:*.gz=00;38;5;215:*.tar=00;38;5;215"
export LS_COLORS
export LSCOLORS=exfxcxdxgxegedabagacad
export GPG_TTY=$(tty)
