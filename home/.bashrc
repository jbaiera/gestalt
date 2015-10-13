# .bashrc

# Don't load anything unless we run interactively
# Check the terminal options to see if it contains 'i'
[[ $- != *i* ]] && return

if [ -d $HOME/.bashrc.d ] 
then
	for f in $HOME/.bashrc.d/*.sh 
	do
		. $f
	done

	# Unset the 'f' iterator.
	unset f
fi

