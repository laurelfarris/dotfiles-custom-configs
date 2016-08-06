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

# Dropbox
setenv PATH ${PATH}:/home/user/laurel07/bin

# Python
setenv PYTHONPATH /home/users/laurel07/python:/home/holtz/a575/isochrone:/home/users/laurel07/a575/myrepo/q22/isochrones

# Alias list
alias virgo  ssh -Y laurel07@virgo.nmsu.edu
alias hyades ssh -Y laurel07@hyades.nmsu.edu
alias praesepe ssh -Y laurel07@praesepe.nmsu.edu
alias solar  ssh -Y laurel07@solarstorm.nmsu.edu
alias acrux  ssh -Y laurel07@acrux.nmsu.edu          
alias astronomy  ssh -Y laurel07@astronomy.nmsu.edu          
alias mine cd /acrux/laurel07
alias ls ls --color=auto
alias open gnome-open

alias XL 'xterm -bg black -fg white -cr gray -fs 15 -sb -sl 600 -T X-Bleh &'

setenv CLICOLOR "true"
setenv LS_COLORS "di=0;94:ex=1;36:fi=0;37:*.png=1;95"

set    blue="%{\033[1;34m%}"
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[0;33m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[3;37m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

#set prompt="\n${white}%n${white}@%m ${white}%c%#${end} "
switch ($TERM)
    case "xterm*":
        set prompt="%{\033]0;@%m: %~\007%}${green}%n${green}@%m ${green}%c%#${end} "
        breaksw
    default:
        set prompt="tcsh%# "
        breaksw
endsw
# # Clean up after ourselves...
 unset red green yellow blue magenta cyan yellow white end
#
#setenv SHELL /bin/bash
#exec /bin/bash --login
