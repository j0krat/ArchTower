#!/usr/bin/env bash

preview_packages() {
    local packages="$1"

    section "Vista previa"

    echo "Se instalarán:"
    echo

    for package in $packages; do
        echo "  - $package"
    done

    echo
    echo "Comando equivalente:"
    echo
    echo "  sudo pacman -S $packages"
    echo
}

install_packages() {
    local packages="$1"

    preview_packages "$packages"

    echo
    read -r -p "¿Continuar? [s/N]: " answer

    case "$answer" in
        s|S|si|SI|sí|SÍ)
            sudo pacman -S --needed $packages
            ;;
        *)
            warning "Instalación cancelada"
            ;;
    esac
}
