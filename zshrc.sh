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
#alias c='open -a Google\ Chrome'

# Don't really need this alias (26 March 2018).
#alias gs='git status'

#
# 6/15/2020 : Attempts to solve XQuartz problem... so far, no luck
#alias astro='ssh laurel07@astronomy.nmsu.edu'
#alias astro='ssh -Y laurel07@astronomy.nmsu.edu'
#alias astro='ssh -X laurel07@astronomy.nmsu.edu'
alias astro='ssh -X -Y laurel07@astronomy.nmsu.edu'
#

#---------------
# My aliases
#--

# Easy navigation aliases
alias diss='cd ${HOME}/Dropbox/Dissertation/'
alias work='cd ${HOME}/Dropbox/Coding/'
#   Matches alias on solarstorm that navigates to directory with this github repo.
alias paper1='cd ${HOME}/Dropbox/Article/A1/'
alias paper2='cd ${HOME}/Dropbox/Article/A2/'


# Misc aliases
alias src='source ~/dotfiles/custom-configs/zshrc.sh'
alias ll='ls  -dFHGP ^*.(aux|bbl|blg|cb|cb2|fff|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias l1='ls -1dFHGP ^*.(aux|bbl|blg|cb|cb2|fff|lof|log|lot|maf|mtc*|nav|out|snm|toc)'
alias mv='mv -i'
alias cp='cp -i'


#--
#--
#---------------


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


#================================================================================
#
# Download pdf from INTERNET, e.g. nasaads or arxiv
# open in preview, and immediately delete.
#   --> to download pdf from external machine via ssh and scp cmd,
#        see function getpaper() below
#  Changed save directory to ~/Dropbox/References/, where I'm more likely to
#   see the pdfs I often "get" and then forget about... (16 May 2019)
# Looks like variable "dir" isn't even used anymore, probably since I
#   condensed things by setting file name as full path-to-file, and then
#   using the --create-dirs option with curl in order to make the dir in
#   the path if it doesn't already exist... aw gee  (17 May 2019)

#--
#------------------------------------------
# 07 October 2020
# TEST:
function test_get() {
    #filenumber=`date +_%Y%m%d`
    #filename=temp_`date +%Y%m%d`
    filename=temp_`date +%Y%m%d.pdf`
    echo $filename
        }
# WORKS!! :)
#------------------------------------------
#--

function get() {
    #dir=${HOME}/Temp/
    #dir=${HOME}/Dropbox/References/

    # 07 October 2020 -- changed format of date used in pdf filename.
    #filenumber=`date +'%s'`
    filename=temp_`date +%Y%m%d.pdf`
    echo filename

    #file=${HOME}/Temp/temp${filenumber}.pdf
    #file=${HOME}/Dropbox/References/temp${filenumber}.pdf

    pdfpath=${HOME}/Dropbox/References/${filenumber}.pdf

    curl --create-dirs -o ${file} $1
    chmod 444 ${file}
    open -g ${file}
    # Add an option to save if desired, and to not remove until Preview
    #    window containing this file is closed> open --args (maybe...)
    # Or just delete from Temp/ after 24 hours...
    # rm ${file}
}

#================================================================================



function getfigures() {
    figurepath=${HOME}/Dropbox/Figures/Temp/
    scp laurel07@astronomy.nmsu.edu:~/Figures/\*.pdf $figurepath
    echo ${figurepath}
    # 10/19/2018 - Using 'find' to only open the files that were just downloaded,
    #  rather than every figure in directory.
    #--------
    #-- 21 July 2020 --> Preview keeps quitting, need to specify a different app
    #find ${figurepath} -mtime -1m -type f -exec open -a Adobe\ Acrobat\ Reader\ DC {} \+
    #--
    #--------
    find ${figurepath} -mtime -1m -type f -exec open {} \+
    # all better now, seemingly (24 July 2020)
    #


    #open ${figurepath}/*.pdf
}

# Copied getfigures, just need one document (probably)
# 6/04/2020 -- can probably delete this function; I never use it.
#    Ditto for "getvideos"
function getpaper() {
    paperpath=${HOME}/
    scp laurel07@astronomy.nmsu.edu:~/Dissertation.pdf $paperpath
    echo ${paperpath}
    find ${paperpath} -mtime -1m -type f -exec open {} \+
    #open ${paperpath}/*.pdf
}

;function getvideos() {
    videopath=${HOME}/Dropbox/Videos/Temp/
    scp laurel07@astronomy.nmsu.edu:~/Videos/\*.mp4 $videopath
    echo ${videopath}
    find ${videopath} -mtime -1m -type f -exec open {} \+
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

# Permanently delete files that have been in .Trash for more than a month.
function prm() {
    # function "nospaces" (defined above) needs to run inside ~/.Trash/
    #  [] --> Find a way to run nospaces first, from any directory.

    # Creating variable for num. files before and after prm (09/11/18)
    let "files1=`ls ${HOME}/.Trash | wc -l`"

    find ${HOME}/.Trash -atime +30 -exec basename {} \;
    find ${HOME}/.Trash -atime +30 -delete

    # Set mindepth to 1 so top directory ~/.Trash/ isn't deleted.
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
