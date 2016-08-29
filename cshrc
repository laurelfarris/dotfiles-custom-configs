source /home/local/etc/cshrc

# SSW IDL
setenv QUIET 1
setenv IDL_STARTUP '/home/users/laurel07/idl/idl_startup.pro'
# Test for existance of a prompt... so we don't break interactive shells?
if ($?prompt) then
setenv SSW_INSTR "BCS HXT SXT WBS MDI EIT CDS SUMER LASCO TRACE ETHZ Nancay Nobeyama SOON HESSI SOT XRT EIS SXI-GOES12 AIA EVE HMI EUVI COR1 COR2 HI"
source $SSW/gen/setup/setup.ssw endif

# MESA
setenv MESA_DIR /home/hyades/jasonj/mesa
setenv PGPLOT_DIR /home/hyades/jasonj/mesa/utils/pgplot
setenv MESASDK_ROOT /home/hyades/jasonj/mesa/utils/mesasdk
setenv OMP_NUM_THREADS 2
source $MESASDK_ROOT/bin/mesasdk_init.csh

# Set paths
setenv PATH ${PATH}:/home/user/laurel07/bin
setenv PYTHONPATH /home/users/laurel07/python:/home/holtz/a575/isochrone:/home/users/laurel07/a575/myrepo/q22/isochrones

# Alias list
alias bash exec bash
alias vi vim
alias virgo  ssh -Y laurel07@virgo.nmsu.edu
alias hyades ssh -Y laurel07@hyades.nmsu.edu
alias praesepe ssh -Y laurel07@praesepe.nmsu.edu
alias solar  ssh -Y laurel07@solarstorm.nmsu.edu
alias acrux  ssh -Y laurel07@acrux.nmsu.edu
alias astro  ssh -Y laurel07@astronomy.nmsu.edu
alias mine cd /acrux/laurel07
alias ls ls --color=auto
alias open gnome-open

# Create my own dir_colors
setenv CLICOLOR "true"
setenv LS_COLORS "di=38;5;067:ln=38;5;167:ex=38;5;071:*.png=38;5;103:*.jpg=38;5;103:*.gz=38;5;215:*.tar=38;5;215"

# Colors (make function for tcsh!!)
#function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }

set lgray="%{\033[38;5;248m%}"
set dgray="%{\033[38;5;238m%}"
set green="%{\033[38;5;107m%}"
set orange="%{\033[38;5;215m%}"
set blue="%{\033[38;5;060m%}"
set yellow="%{\033[38;5;229m%}"
set purple="%{\033[38;5;097m%}"
set blue="%{\033[38;5;081m%}"
set white="%{\033[3;37m%}"
set end="%{\033[0m%}" # This is needed at the end... :(

# # Clean up after ourselves...
unset orange green yellow blue purple yellow white dgray lgray end
#
#setenv SHELL /bin/bash
#exec /bin/bash --login
