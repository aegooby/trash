#!/bin/sh
trash() {
    case "$OSTYPE" in
        solaris*) mv "$@" ~/.local/share/trash ;;
        darwin*)  mv "$@" ~/.Trash/ ;; 
        linux*)   mv "$@" ~/.local/share/trash ;;
        bsd*)     mv "$@" ~/.local/share/trash ;;
        msys*)    mv "$@" C:\$Recycle ;;
        cygwin*)  mv "$@" C:\$Recycle ;;
        *)        echo "error: unknown operating system '$OSTYPE'" ;;
    esac
}
