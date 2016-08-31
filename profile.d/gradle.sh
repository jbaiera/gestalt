# gradle.sh

# Check if brew is installed on the system.
if brew info 1> /dev/null; then
    # If it is then check if Gradle is installed on the system.
    if brew list -1 | grep -q 'gradle'; then
        # Set GRADLE_HOME to point to the active version of gradle in brew.
        export GRADLE_HOME=`brew info gradle | grep '*$' | awk '{print $1}'`
	export GRADLE_USER_HOME=$HOME/.gradle
    fi
fi

