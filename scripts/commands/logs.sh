#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"

title "ArchTower Logs"

if [[ ! -d "$LOG_DIR" ]]; then
    warning "No existe el directorio de logs"
    exit 0
fi

LOG_FILE="$LOG_DIR/$(date +%F).log"

if [[ ! -f "$LOG_FILE" ]]; then
    warning "No hay logs para hoy"
    exit 0
fi

section "Últimas líneas"

tail -20 "$LOG_FILE"
