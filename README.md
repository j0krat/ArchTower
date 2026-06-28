#ArchTower

> *A trustworthy, documented and reproducible Arch Linux workstation.*

ArchTower no es una distribución de Linux.

No es un reemplazo para Arch.

No es un conjunto de scripts sin organización.

ArchTower es un proyecto cuyo objetivo es construir una estación de trabajo basada en Arch Linux que sea **confiable, documentada, reproducible y cómoda**, sin perder la filosofía de Arch.

---

# ¿Por qué existe?

Con el tiempo descubrí que mantener una instalación de Arch Linux no consiste únicamente en instalar paquetes.

También implica:

* Documentar decisiones.
* Automatizar tareas repetitivas.
* Mantener una estructura limpia.
* Poder reconstruir el sistema desde cero.
* Entender cada cambio realizado.

ArchTower nace para resolver ese problema.

---

# Filosofía

ArchTower sigue algunos principios muy simples.

## Seguridad antes que velocidad

Nunca debe ejecutar acciones destructivas sin informar al usuario.

---

## Transparencia

Cada comando debe indicar claramente qué está haciendo.

Nada de "magia".

---

## Automatizar sin esconder

ArchTower automatiza tareas repetitivas.

No intenta ocultar cómo funciona Arch Linux.

---

## Repos oficiales primero

Siempre que sea posible se utilizan los repositorios oficiales.

El AUR se utiliza únicamente cuando aporta un beneficio claro.

---

## La documentación es parte del software

Cada decisión importante queda documentada.

No solo importa que algo funcione.

También importa entender por qué funciona.

---

# Estado del proyecto

Actualmente ArchTower se encuentra en desarrollo activo.

Versión actual:

```
v0.4.0-alpha
```

---

# Funciones actuales

```bash
archtower info
```

Muestra información general del sistema.

---

```bash
archtower doctor
```

Realiza un diagnóstico del sistema.

Actualmente verifica:

* Conectividad
* Estado de Git
* NVIDIA
* Espacio disponible
* Memoria
* Actualizaciones pendientes
* Estado de los dotfiles

---

```bash
archtower version
```

Muestra la versión instalada de ArchTower.

---

# Roadmap

## Core

* [x] CLI
* [x] Doctor
* [x] Dotfiles
* [x] Logger
* [ ] Configuración centralizada
* [ ] Librerías reutilizables

---

## Sistema

* [ ] Update inteligente
* [ ] Limpieza segura
* [ ] Backups
* [ ] Snapshots

---

## Desarrollo

* [ ] Docker
* [ ] Python
* [ ] uv
* [ ] Git avanzado

---

## Gaming

* [ ] Steam
* [ ] Proton
* [ ] MangoHud
* [ ] GameMode

---

## Música

* [ ] PipeWire
* [ ] REAPER
* [ ] Plugins
* [ ] Baja latencia

---

# Estructura

```
dotfiles/

docs/
scripts/
bash/
git/
kitty/

Notes/
Projects/
Labs/
```

---

# Objetivos

ArchTower busca que el usuario pueda decir:

* Sé por qué está instalado cada paquete.
* Sé cómo reconstruir mi sistema.
* Sé qué hace cada comando.
* Confío en mi estación de trabajo.

---

# Contribuir

Actualmente ArchTower es un proyecto personal.

Sin embargo, cualquier sugerencia, discusión o mejora es bienvenida.

---

# Autor

Desarrollado por **Joaquín "j0krat" Vejar**.

Con mucho café, Linux, curiosidad y ganas de Aprender.

---

# Licencia

En evaluación.

