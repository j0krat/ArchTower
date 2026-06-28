#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"
source "$SCRIPT_DIR/../lib/logger.sh"
source "$SCRIPT_DIR/../lib/utils.sh"

title "ArchTower Info"

section "Proyecto"
success "Versión"
detail "$ARCHTOWER_VERSION"

success "Rama"
detail "$(get_current_branch)"

success "Último commit"
detail "$(get_last_commit)"

section "Arquitectura"
success "Comandos"
detail "$(count_files "$DOTFILES_DIR/scripts/commands")"

success "Librerías"
detail "$(count_files "$DOTFILES_DIR/scripts/lib")"
