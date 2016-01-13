# scala.sh

# Check if brew is installed on the system.
if brew info 1> /dev/null; then
    # If it is then check if Scala is installed on the system.
    if brew list -1 | grep -q 'scala'; then
        # Set SCALA_HOME to point to the active version of scala in brew.
        export SCALA_HOME=`brew info scala | grep '*$' | awk '{print $1}'`
        export PATH=$SCALA_HOME/bin:$PATH
    fi
fi

