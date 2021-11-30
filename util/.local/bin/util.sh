#!/usr/bin/env bash

g11 () {
    cd $(pwd)
    if [[ $1 = *.c ]]; then
        gcc -Wextra -Wall -std=c11 -o "_tmprun" $1 && ./_tmprun 2>&1 && rm "_tmprun"
    elif [[ $1 = *.cpp ]]; then
        g++ -Wextra -Wall -std=c++17 -o "_tmprun" $1 && ./_tmprun 2>&1 && rm "_tmprun"
    else
        echo "wrong format"
    fi
}

zshdump() {
    autoload -Uz compinit
    for dump in ~/.zcompdump(N.mh+24); do
        compinit
    done
    compinit -C
}

promptdump() {
    exec 2> ~/zsh.err
    set -x
    set +x
}

ide() {
  tmux split-window -v -p 30
  tmux split-window -h -p 66
  tmux split-window -h -p 50
}
