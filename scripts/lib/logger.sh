#!/usr/bin/env bash

LOG_FILE="$LOG_DIR/$(date +%F).log"

mkdir -p "$LOG_DIR"

write_log() {

    LEVEL="$1"

    MESSAGE="$2"

    printf "[%s] %-5s %s\n" \
        "$(date '+%H:%M:%S')" \
        "$LEVEL" \
        "$MESSAGE" >> "$LOG_FILE"
}

log_info() {

    write_log "INFO" "$1"

}

log_warn() {

    write_log "WARN" "$1"

}

log_error() {

    write_log "ERROR" "$1"

}
