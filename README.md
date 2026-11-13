# Ziha Rueditas 0.2.0

Configurador sencillo en Bash para Debian y Ubuntu con GNOME.

## Instalar

```bash
sudo apt install ./ziha-rueditas_0.2.0_all.deb
ziha_rueditas
```

Opciones 1-3: elegir entre tres fondos de pantalla originales.
Opcion 4: generar locale es_ES.UTF-8 y establecer idioma predeterminado.
Opcion 5: establecer teclado espanol de Espana, guardando una copia del archivo anterior.

Ejecutar como usuario normal, nunca con sudo. Las opciones de sistema solicitan privilegios cuando se necesitan.
Tras cambiar el idioma o teclado, cerrar sesion y volver a entrar.

**Nota:** cambiar el locale no instala por si solo todos los paquetes de traduccion de cada aplicacion. En Ubuntu es posible que hagan falta paquetes language-pack-es.

## Editar con nano

```bash
nano usr/bin/ziha_rueditas
nano DEBIAN/control
```

## Compilar

Desde el directorio que contiene la carpeta `ziha_rueditas`:

```bash
chmod 755 ziha_rueditas/usr/bin/ziha_rueditas
dpkg-deb --build ziha_rueditas ziha-rueditas_0.2.0_all.deb
```
