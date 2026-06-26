# ArchTower Architecture

ArchTower es una herramienta personal para administrar, diagnosticar y documentar una workstation Arch Linux.

## Principios

- Repos oficiales primero.
- AUR solo cuando aporte valor claro.
- Nada destructivo sin confirmación.
- Cada función debe resolver un problema real.
- Todo debe poder reconstruirse desde cero.
- La configuración importante vive en dotfiles.
- Las tareas repetitivas deben automatizarse.

## Niveles de comandos

### Nivel 1: Información

Comandos que solo leen información.

- archtower info
- archtower doctor
- archtower version

### Nivel 2: Mantenimiento

Comandos que modifican el sistema de forma controlada.

- archtower update
- archtower clean

### Nivel 3: Administración

Comandos con impacto mayor.

- archtower backup
- archtower restore
- archtower snapshot
