export PATH="${HOME}/usr/bin:${PATH}"
alias ..="cd .."

BSD_LS_FLAG="-laGF"
GNU_LS_FLAG="-alF --color"

case "${OSTYPE}" in
darwin*)#BSD series
	alias ls="ls ${BSD_LS_FLAG}"
	export LSCOLORS=gxfxcxdxbxegexabagacad
	export PATH="${PATH}:/Applications/microchip/xc8/v1.45/bin"
	;;
linux*)#GNU series
	alias ls="ls ${GNU_LS_FLAG}"
	;;
esac

alias l=ls
alias ll=ls
alias っl=ls
alias lll=ls
alias llll=ls
