#!/usr/bin/env bash

LOG_DIR="$HOME/.local/share/archtower/logs"

mkdir -p "$LOG_DIR"

log_info() {
    echo "[INFO] $1"
}

log_warn() {
    echo "[WARN] $1"
}

log_error() {
    echo "[ERROR] $1"
}
