# .profile

if [ -d $HOME/.profile.d ] then
	for f in $HOME/.profile.d/*.sh do
		. $f
	done

	# Unset the 'f' iterator
	unset f
fi

PATH=$HOME/bin:$PATH

