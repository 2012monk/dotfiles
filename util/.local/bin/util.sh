#!/usr/bin/env bash

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
