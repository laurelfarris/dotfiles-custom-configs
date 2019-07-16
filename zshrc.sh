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
alias c='open -a Google\ Chrome'

# Don't really need this alias (26 March 2018).
#alias gs='git status'

# My aliases
alias src='source ~/dotfiles/custom-configs/zshrc.sh'
alias astro='ssh -X -Y laurel07@astronomy.nmsu.edu'
alias work='cd ${HOME}/Dropbox/Research/Codes/'
alias ll='ls -dFHGP ^*.(aux|bbl|blg|cb|cb2|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias l1='ls -1dFHGP ^*.(aux|bbl|blg|cb|cb2|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias mv='mv -i'
alias cp='cp -i'

# Neither of these works (01 November 2018)
alias jup='jupyter notebook'
alias jup2='open -a safari http://localhost:8888/'

#alias mydate='echo $(date +%d/%m/%y)'
#  not able to read this into vim using :r! mydate -- 25 April 2018

# write function that takes an argument(s)
function astrocp() {
    for i
    do scp $i laurel07@astronomy.nmsu.edu:~
    done
}


#--------------------------------------------------------------------------------
# function to show names of pdf files with less than maxpages
#   (15-16 July 2019)

function mytest() {
    while getopts ab:c opt; do
        case ${opt} in
            a ) echo ${opt}
                ;;
            b ) echo ${opt}
                bvalue=$OPTARG
                echo $bvalue
                ;;
            c) echo ${opt}
                ;;
            \? ) echo "ERROR"
                ;;
        esac
    done
}

function pdfpages() {
    # -name kMDItemNumberOfPages
    # -name kMDItemFSName

        #mdls -name kMDItemNumberOfPages $fname | awk '{ if ($3 < 7) {print $3} }'
        # --> works, but not sure how to print $fame and npages side by side

    while getopts "p:" opt; do
        case ${opt} in
            p ) maxpages=$OPTARG
                ;;
            \? ) echo "ERROR"
                ;;
        esac
    done


    argind=${(($OPTIND))}
    echo $argind

#    for fname in $(arg); do
#        echo $fname
#        npages=`mdls -name kMDItemNumberOfPages $fname | awk '{print $3}'`
#        if (( npages < maxpages )) ; then
#            echo $npages $fname
#        fi
#    done

}


#--------------------------------------------------------------------------------



function getfigures() {
    figurepath=${HOME}/Dropbox/Figures/Temp/
    scp laurel07@astronomy.nmsu.edu:~/Figures/\*.pdf $figurepath
    echo ${figurepath}
    # 10/19/2018 - Using 'find' to only open the files that were just downloaded,
    #  rather than every figure in directory.
    find ${figurepath} -mtime -1m -type f -exec open {} \+
    #open ${figurepath}/*.pdf
}



## Copied getfigures, just need one document (probably)
function getpaper() {
    paperpath=${HOME}/
    scp laurel07@astronomy.nmsu.edu:~/Dissertation.pdf $paperpath
    echo ${paperpath}
    find ${paperpath} -mtime -1m -type f -exec open {} \+
    #open ${paperpath}/*.pdf
}


function nospaces() {

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
    # This can delete entire directories, and their contents I think.
    # --> Fix it so it works more like command rm.
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

    find ${HOME}/.Trash -atime +15 -exec basename {} \;
    find ${HOME}/.Trash -atime +15 -delete

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
#  Changed save directory to ~/Dropbox/References/, where I'm more likely to
#   see the pdfs I often "get" and then forget about... (16 May 2019)
# Looks like variable "dir" isn't even used anymore, probably since I
#   condensed things by setting file name as full path-to-file, and then
#   using the --create-dirs option with curl in order to make the dir in
#   the path if it doesn't already exist... aw gee  (17 May 2019)
function get() {
    #dir=${HOME}/Temp/
    #dir=${HOME}/Dropbox/References/

    filenumber=`date +'%s'`
    #file=${HOME}/Temp/temp${filenumber}.pdf
    file=${HOME}/Dropbox/References/temp${filenumber}.pdf
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
