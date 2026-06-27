#!/usr/bin/env bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

get_last_commit() {
    git -C "$DOTFILES_DIR" log --oneline -1 | cut -d' ' -f1
}

get_current_branch() {
    git -C "$DOTFILES_DIR" branch --show-current
}

check_internet() {
    ping -c 1 1.1.1.1 >/dev/null 2>&1
}

check_nvidia() {
    command -v nvidia-smi >/dev/null 2>&1
}

check_updates() {
    ckeckupdates >/dev/null 2>&1
}

get_kernel() {
    uname -r
}

get_root_usage() {
    df -h / | awk 'NR==2 {print $5}'
}


