function dotfiles/terminal/color() {
    case `hostname -s` in
        poirot | japp )
            print red ;;
        marple | macarthur | C02FL2L6MD6T )
            print cyan ;;
        pyne | wargrave )
            print magenta ;;
        hastings | japp )
            print green ;;
        lemon )
            print yellow ;;
        oliver | quin )
            print blue ;;
        * )
            print white ;;
    esac
}

function dotfiles/terminal/character() {
    case `whoami` in
        ride )
            print '\u271D' ;;
        * )
            print '%(!.\uA4.%%)' ;;
    esac
}

function dotfiles/terminal/consoleCharacter() {
    case `whoami` in
        ride )
            print '+' ;;
        * )
            print '%#' ;;
    esac
}

zstyle ':ride:prompt' color $(dotfiles/terminal/color)
zstyle ':ride:prompt' char $(dotfiles/terminal/character)
zstyle ':ride:prompt' console-char $(dotfiles/terminal/consoleCharacter)
