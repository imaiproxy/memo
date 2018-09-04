export PATH="${HOME}/usr/bin:${PATH}"
alias ..="cd .."

case "${OSTYPE}" in
darwin*)#BSD series
	alias ls="ls -laGF"
	alias l="ls -laGF"
	alias ll="ls -laGF"
	export LSCOLORS=gxfxcxdxbxegexabagacad
	export PATH="${PATH}:/Applications/microchip/xc8/v1.45/bin"
	;;
linux*)#GNU series
	alias ls="ls -alF --color"
	alias l="ls -alF --color"
	alias ll="ls -alF --color"
	;;
esac
