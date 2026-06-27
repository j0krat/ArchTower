#!/usr/bin/env bash

# =====================================
# ArchTower - Version Command
# =====================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/../lib/config.sh"
source "$SCRIPT_DIR/../lib/colors.sh"

title "ArchTower"

info "Version"

echo "$ARCHTOWER_VERSION"
