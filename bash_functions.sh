function cdl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls --color=auto
}

function path() {
    for i in $(echo $PATH | tr ':' ' ')
    do
        echo -e "$i"
    done
}
