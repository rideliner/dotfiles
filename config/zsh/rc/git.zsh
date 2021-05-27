function @ {
    pwd
    dotfiles/git/status
}

function dotfiles/git/status() {
    local gitstatus=$(python $ZDOTDIR/bin/gitstatus.py 2>/dev/null)
    local statusArr=("${(@s: :)gitstatus}")

    if [ ! -n "$statusArr" ]; then
        return
    fi

    for item in branch behind ahead separator staged conflicts changed untracked clean; do
        eval "dotfiles/git/status/${item} \"\${statusArr[@]}\""
        echo -n "${reset_color}"
    done
    echo
}

function dotfiles/git/status/branch() {
    echo -n "$fg_bold[magenta] $1 "
}

function dotfiles/git/status/behind() {
    if [ "$2" -ne "0" ]; then
        echo -n "↓$2 "
    fi
}

function dotfiles/git/status/ahead() {
    if [ "$3" -ne "0" ]; then
        echo -n "↑$3 "
    fi
}

function dotfiles/git/status/separator() {
    echo -n "|"
}

function dotfiles/git/status/staged() {
    if [ "$4" -ne "0" ]; then
        echo -n " $fg[green]●$4"
    fi
}

function dotfiles/git/status/conflicts() {
    if [ "$5" -ne "0" ]; then
        echo -n " $fg[red]✖$5"
    fi
}

function dotfiles/git/status/changed() {
    if [ "$6" -ne "0" ]; then
        echo -n " $fg[yellow]✚$6"
    fi
}

function dotfiles/git/status/untracked() {
    if [ "$7" -ne "0" ]; then
        echo -n " $fg[cyan]…$7"
    fi
}

function dotfiles/git/status/clean() {
    if [ "$4" -eq "0" ] && [ "$5" -eq "0" ] && [ "$6" -eq "0" ] && [ "$7" -eq "0" ]; then
        echo -n " $fg_bold[white]✔"
    fi
}
