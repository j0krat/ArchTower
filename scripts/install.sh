#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
LAUNCHER="/usr/local/bin/archtower"

echo
echo "================================="
echo "     ArchTower Installer"
echo "================================="
echo

echo "Verificando instalación previa..."

if [[ -x "$LAUNCHER" ]]; then
    echo "⚠ ArchTower ya tiene un launcher en:"
    echo "  $LAUNCHER"
    echo
    echo "Se reemplazará el launcher actual."
else
    echo "✓ No se encontró launcher previo"
fi

echo
echo "Verificando dependencias..."

if ! command -v bash >/dev/null 2>&1; then
    echo "✗ Bash no encontrado."
    exit 1
fi
echo "✓ Bash"

if ! command -v git >/dev/null 2>&1; then
    echo "✗ Git no encontrado."
    exit 1
fi
echo "✓ Git"

echo
echo "Instalando launcher..."

sudo tee "$LAUNCHER" > /dev/null <<EOF
#!/usr/bin/env bash
exec "$PROJECT_ROOT/scripts/archtower" "\$@"
EOF

sudo chmod +x "$LAUNCHER"

echo "✓ Launcher instalado en $LAUNCHER"

echo
echo "Verificando instalación..."

if "$LAUNCHER" version >/dev/null 2>&1; then
    echo "✓ ArchTower responde correctamente"
else
    echo "✗ ArchTower fue instalado, pero no responde correctamente."
    exit 1
fi

echo
echo "================================="
echo " Instalación completada"
echo "================================="
echo
echo "Prueba:"
echo "  archtower doctor"
