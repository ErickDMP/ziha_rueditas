#!/bin/bash

# Ziha Rueditas - Instalador automatico
# Desarrollado por Ziha Studio
# https://ziha.es

set -euo pipefail

URL="https://erickdmp.github.io/ziha_rueditas"
CLAVE="/etc/apt/keyrings/ziha-archive-key.asc"
HUELLA="40F1971345C3C92ACAEF9AE6ACE2D0DE66CDCEAD"

# Comprobar permisos de administrador
if [ "$(id -u)" -ne 0 ]; then
    echo "Ejecuta el instalador con sudo."
    exit 1
fi

echo "=================================="
echo "    ZIHA RUEDITAS - INSTALADOR"
echo "          Ziha Studio <3"
echo "=================================="

# Instalar herramientas necesarias
echo "Preparando el sistema..."
apt-get update
apt-get install -y curl gnupg ca-certificates

# Descargar la clave publica
echo "Descargando clave de Ziha Studio..."
TEMP=$(mktemp)
trap 'rm -f "$TEMP"' EXIT

curl -fsSL "$URL/ziha-archive-key.asc" -o "$TEMP"

# Verificar la huella digital de la clave
RECIBIDA=$(gpg --batch --with-colons --show-keys "$TEMP" |
    awk -F: '$1=="pub"{p=1;next} $1=="fpr" && p{print $10;p=0}')

if [ "$RECIBIDA" != "$HUELLA" ]; then
    echo "ERROR: Clave GPG incorrecta."
    exit 1
fi

# Instalar la clave publica
echo "Configurando clave GPG..."
install -d -m 755 /etc/apt/keyrings
install -m 644 "$TEMP" "$CLAVE"

# Configurar nuestro repositorio APT
echo "Configurando repositorio..."

cat > /etc/apt/sources.list.d/ziha.sources <<EOF
Types: deb
URIs: $URL/
Suites: ./
Signed-By: $CLAVE
EOF

# Instalar Ziha Rueditas
echo "Instalando Ziha Rueditas..."
apt-get update
apt-get install -y ziha-rueditas

echo "=================================="
echo "   INSTALACION COMPLETADA"
echo "   Ejecuta: ziha_rueditas"
echo "   Gracias por confiar en Ziha <3"
echo "=================================="
