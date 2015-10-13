# prompt.sh

set_prompt() {
	local e="\[\e["
	local end="m\]"

	local NO_COLOR="${e}0${end}"
	local BLUE="${e}0;34${end}"
	local DARK_BLUE="${e}1;34${end}"
	local RED="${e}0;31${end}"
	local DARK_RED="${e}1;31${end}"
	local GREEN="${e}0:32${end}"

	case $TERM in
		xterm*|screen)
			TITLEBAR="\[\e]0;\u@\h \w\007\]";
			;;
		*)
			TITLEBAR="";
			;;
	esac

	FAILURE_COLOR="if [[ \$? = '0' ]]; then echo \"$GREEN\"; else echo \"$RED\"; fi"

	PS1="$TITLEBAR$BLUE[\t]\`$FAILURE_COLOR\` \u@\h> $NO_COLOR"
}

set_prompt
