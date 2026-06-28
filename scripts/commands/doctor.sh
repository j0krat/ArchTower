#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"
source "$SCRIPT_DIR/../lib/logger.sh"
source "$SCRIPT_DIR/../lib/utils.sh"
source "$SCRIPT_DIR/../lib/utils.sh"
source "$SCRIPT_DIR/../lib/gpu.sh"

score=100

system_checks() {
    section "Sistema"

    success "Kernel"
    detail "  $(get_kernel)"
    success "Disco"
    detail "  Uso: $(get_root_usage)"

}

network_checks() {
    section "Red"

    if check_internet; then
        success "Internet"
	detail "  Conexión Disponible"
    else
        error "Internet"
	hint "Verifica tu conexión o NetworkManager"
        ((score-=20))
    fi
}

driver_checks() {
    section "GPU"

    success "Fabricante"
    detail "$(detect_gpu_vendor)"

    success "Modelo"
    detail "$(detect_gpu_model)"

    local driver_status
    driver_status="$(check_gpu_driver)"

    if [[ "$driver_status" == "OK" ]]; then
        success "Driver"
        detail "OK"
    else
        warning "Driver"
        detail "$driver_status"
        hint "Revisa los controladores gráficos instalados."
        ((score-=10))
    fi
}

project_checks() {
    section "Proyecto"

    if command_exists git; then
        success "Git"
	detail "  Instalado"
    else
        error "Git"
	hint "Instala Git con: sudo pacman -S git"
        ((score-=10))
    fi
}

title "ArchTower Doctor"

log_info "Doctor Iniciado"

title "Inicio"

system_checks
network_checks
driver_checks
project_checks

title "Fin"

log_info "Doctor Finalizado con score $score"

result "$score" "Sistema Saludable"
