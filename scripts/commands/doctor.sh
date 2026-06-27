#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"
source "$SCRIPT_DIR/../lib/logger.sh"
source "$SCRIPT_DIR/../lib/utils.sh"

score=100

system_checks() {
    section "Sistema"
}

network_checks() {
    section "Red"

    if check_internet; then
        success "Internet"
    else
        error "Internet"
        ((score-=20))
    fi
}

driver_checks() {
    section "Drivers"

    if check_nvidia; then
        success "NVIDIA"
    else
        warning "NVIDIA no detectada"
        ((score-=10))
    fi
}

project_checks() {
    section "Proyecto"

    if command_exists git; then
        success "Git"
    else
        error "Git"
        ((score-=10))
    fi
}

title "ArchTower Doctor"

system_checks
network_checks
driver_checks
project_checks

result "$score" "Sistema Saludable"
