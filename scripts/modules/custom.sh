#!/usr/bin/env bash

custom_setup() {
    title "Perfil Personalizado"

    echo "Selecciona paquetes separados por espacios."
    echo "Ejemplo:"
    echo "  git python docker btop"
    echo

    read -r -p "Paquetes: " packages

    if [[ -z "$packages" ]]; then
        warning "No se ingresaron paquetes"
        return
    fi

    install_packages "$packages"
}
