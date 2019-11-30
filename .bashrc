export LS_COLORS='di=01;35'
export HISTTIMEFORMAT="%F %T "
export PATH="${HOME}/usr/bin:${PATH}"
alias ..="cd .."
alias CD="source CD"

BSD_LS_FLAG="-laGF"
GNU_LS_FLAG="-alF --color"

case "${OSTYPE}" in
darwin*)#BSD series
	alias ls="ls ${BSD_LS_FLAG}"
	alias rm='rmtrash'
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


alias emacs='vim'


check_aslr()
{
	num=$(cat /proc/sys/kernel/randomize_va_space)
	if [[ $num -eq 0 ]]; then
		echo -e "\e[31m$num\e[0m"
	else
		echo $num
	fi
}

check_return_code()
{
	return_code=$?
	if [[ return_code -eq 0 ]]; then
		echo 0
	elif [[ return_code -eq 127 ]]; then
		echo -e "\e[34m$return_code\e[0m"
	else
		echo -e "\e[31m$return_code\e[0m"
	fi
}

command_not_found_handle()
{
	local cmd
	cmd=$1
	if [[ $cmd =~ ^ll+ ]]; then
		ls
	else
		echo -ne "\e[34m${cmd} \e[0m command not found!\n"
		return 127
	fi
}

PS1='$(check_return_code):$(check_aslr):\W \u$ '

