source /home/local/etc/cshrc


# MESA
#setenv MESA_DIR /home/hyades/jasonj/mesa
#setenv PGPLOT_DIR /home/hyades/jasonj/mesa/utils/pgplot
#setenv MESASDK_ROOT /home/hyades/jasonj/mesa/utils/mesasdk
#setenv OMP_NUM_THREADS 2
#source $MESASDK_ROOT/bin/mesasdk_init.csh
# Commenting these since probably won't use MESA again


# Set paths
setenv PATH ${PATH}:/home/user/laurel07/bin
setenv PYTHONPATH /home/users/laurel07/python:/home/holtz/a575/isochrone:/home/users/laurel07/a575/myrepo/q22/isochrones

# Alias list
#alias bash exec bash
alias vi vim
alias virgo ssh -Y laurel07@virgo.nmsu.edu
alias hyades ssh -Y laurel07@hyades.nmsu.edu
alias praesepe ssh -Y laurel07@praesepe.nmsu.edu
alias solar ssh laurel07@solarstorm.nmsu.edu
alias acrux ssh -Y laurel07@acrux.nmsu.edu
alias astro ssh -Y laurel07@astronomy.nmsu.edu
alias ls ls --color=auto
alias src source $HOME/.cshrc
#alias open gnome-open

# Create my own dir_colors
setenv CLICOLOR "true"
setenv LS_COLORS "di=38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;103:*.jpg=38;5;103:*.gz=38;5;215:*.tar=38;5;215"

# Colors (make function for tcsh!!)
#function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }

set lgray="%{\033[38;5;248m%}"
set dgray="%{\033[38;5;238m%}"
#set green="%{\033[38;5;107m%}"
set green="%{\033[0;32m%}"
set orange="%{\033[38;5;215m%}"
#set blue="%{\033[38;5;060m%}"
#set blue="%{\033[38;5;081m%}"
set blue="%{\033[1;34m%}"
set yellow="%{\033[38;5;229m%}"
set purple="%{\033[38;5;097m%}"
set white="%{\033[3;37m%}"
set end="%{\033[0m%}" # This is needed at the end... :(

set prompt="${lgray}[ %n@%m %~ ]${end} "

# Clean up after ourselves...
unset orange green yellow blue purple yellow white dgray lgray end

#setenv SHELL /bin/bash
#exec /bin/bash --login


# SSW IDL
setenv QUIET 1
setenv IDL_STARTUP '/home/users/laurel07/idl/idl_startup.pro'
# Test for existance of a prompt... so we don't break interactive shells?
 
if ($?prompt) then
#setenv SSW_INSTR "AIA EVE HMI IRIS HESSI BCS HXT SXT XRT EIS SXI-GOES12 EUVI WBS MDI EIT CDS SUMER LASCO TRACE ETHZ Nancay Nobeyama SOON SOT COR1 COR2 HI"
setenv SSW_INSTR "AIA HMI HESSI"

#source $SSW/gen/setup/setup.ssw endif
source $HOME/setup.ssw endif

# 16 May 2019
#   >echo $SSW
#   NOTE: same packages can exist for multiple instruments...
#           will load in order of appearance.
# setenv SSW database... or something
