#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"
source "$SCRIPT_DIR/../lib/logger.sh"
source "$SCRIPT_DIR/../lib/utils.sh"

source "$SCRIPT_DIR/../modules/menu.sh"
source "$SCRIPT_DIR/../modules/packages.sh"
source "$SCRIPT_DIR/../modules/study.sh"

show_setup_menu

read -r -p "Selecciona una opción: " option

case "$option" in
    1)
        title "Perfil Estudio / Desarrollo"
        install_packages "$(study_packages)"
        ;;
    0)
        warning "Setup cancelado"
        ;;
    *)
        error "Opción no implementada todavía"
        ;;
esac
