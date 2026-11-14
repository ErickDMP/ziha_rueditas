
# Ziha Rueditas 0.3.0

Desarrollado por Ziha Studio <3

Ziha Rueditas es una herramienta escrita en Bash
para facilitar la configuracion de Debian y Ubuntu.

El proyecto nace de la necesidad de preparar
maquinas virtuales para estudiar ASIR.

## Funcionalidades

- Tres fondos de pantalla personalizados de Ziha.
- Configuracion del sistema en espanol.
- Configuracion del teclado espanol.
- Informacion del sistema y arquitectura.
- Deteccion de virtualizacion.
- Cambio de resolucion de pantalla.
- Escalado de pantalla al 100%, 125%, 150% y 200%.
- Configuracion del tamano del texto.
- Restauracion del escalado y texto.
- Instalacion de herramientas esenciales.
- Asistente de configuracion completa.
- Menu personalizado con colores ANSI.

## Instalacion

Descarga el instalador automatico:

    curl -fsSLO https://erickdmp.github.io/ziha_rueditas/install.sh

Revisa el script antes de ejecutarlo:

    cat install.sh

Instala el programa:

    sudo bash install.sh

## Ejecutar Ziha Rueditas

    ziha_rueditas

Ejecutar como usuario normal, sin sudo.

## Actualizaciones

    sudo apt update
    sudo apt install --only-upgrade ziha-rueditas

## Compatibilidad

- Debian 13 AMD64: probado.
- Debian ARM64: pendiente de validacion.
- Ubuntu: pendiente de validacion.
- GNOME y Wayland.

Las funciones de resolucion y escalado necesitan
gdctl y actualmente admiten un unico monitor.

No instala Guest Additions ni controladores
especificos de VirtualBox.

## Seguridad

Repositorio APT firmado digitalmente mediante GPG.
Verificacion automatica de la clave publica.

## Historial de versiones

### 0.3.0

- Informacion del sistema.
- Configuracion avanzada de pantalla.
- Herramientas esenciales.
- Asistente de configuracion completa.
- Personalizacion visual del menu.

### 0.2.0

- Fondos personalizados.
- Idioma y teclado espanol.
- Repositorio APT firmado.
- Instalador automatico.

## Pagina oficial

https://ziha.es/rueditas/

## Contacto

Ziha Studio
contacto@ziha.es

