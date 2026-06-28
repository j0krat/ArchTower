#!/usr/bin/env bash

# =====================================
# ArchTower Color Library
# =====================================

# Colores
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
WHITE="\033[1;37m"
BOLD="\033[1m"
RESET="\033[0m"

# =====================================
# Funciones
# =====================================

success() {
    echo -e "${GREEN}✓${RESET} $1"
}

warning() {
    echo -e "${YELLOW}⚠${RESET} $1"
}

error() {
    echo -e "${RED}✗${RESET} $1"
}

info() {
    echo -e "${BLUE}ℹ${RESET} $1"
}

title() {
    echo
    echo -e "${CYAN}${BOLD}$1${RESET}"
    printf '%*s\n' "${#1}" '' | tr ' ' '='
}

section() {
    echo
    echo -e "${WHITE}$1${RESET}"
    printf '%*s\n' "${#1}" '' | tr ' ' '-'
}

separator() {
    printf '%*s\n' "$(tput cols 2>/dev/null || echo 50)" '' | tr ' ' '─'
}

result() {
    echo
    separator
    echo -e "${CYAN}${BOLD}Health Score${RESET}"
    echo
    echo -e "${GREEN}${BOLD}$1/100${RESET}"
    echo
    echo "$2"
}
