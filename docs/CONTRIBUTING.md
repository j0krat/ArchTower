# Contribuir a ArchTower

Antes que nada, gracias por interesarte en ArchTower.

Ya sea que quieras corregir un error, proponer una nueva funcionalidad, mejorar la documentación o simplemente aprender, tu ayuda es bienvenida.

Sin embargo, antes de escribir una sola línea de código, queremos compartir la filosofía que guía este proyecto.

---

# La filosofía de ArchTower

ArchTower no es una colección de scripts.

Es un proyecto cuyo objetivo es construir una workstation Arch Linux confiable, documentada, reproducible y cómoda, sin ocultar cómo funciona el sistema.

Cada contribución debería ayudar a reforzar esa idea.

---

# Antes de contribuir

Hazte estas preguntas:

* ¿Esta función resuelve un problema real?
* ¿Hace el proyecto más fácil de entender?
* ¿Respeta la filosofía de ArchTower?
* ¿Alguien entenderá este código dentro de un año?

Si la respuesta es **sí**, probablemente sea una buena contribución.

---

# Principios del proyecto

## Una función, una responsabilidad

Cada función debe resolver un único problema.

Si una función comienza a hacer demasiadas cosas, probablemente deba dividirse.

---

## Claridad antes que complejidad

Preferimos código fácil de leer antes que código ingenioso.

El objetivo es que cualquier persona pueda comprender el proyecto sin tener que descifrar cada decisión.

---

## La documentación también es software

Si una decisión importante cambia, la documentación también debe actualizarse.

El código y la documentación deben evolucionar juntos.

---

## Seguridad antes que velocidad

ArchTower nunca debe ejecutar acciones potencialmente destructivas sin informar al usuario.

El usuario siempre debe saber qué está ocurriendo.

---

## Automatizar sin esconder

ArchTower automatiza tareas repetitivas.

No pretende ocultar cómo funciona Arch Linux.

El objetivo es ayudar a aprender, no reemplazar el aprendizaje.

---

# Filosofía de los commits

Cada commit debe contar una historia.

Un commit debería representar un único cambio lógico.

Ejemplos:

```text
feat: añadir comando logs

fix: mejorar salida de doctor

docs: actualizar roadmap

refactor: simplificar logger
```

Evita mezclar cambios sin relación dentro del mismo commit.

---

# Antes de abrir un Pull Request

Comprueba siempre que:

* El proyecto sigue funcionando correctamente.
* La documentación está actualizada si fue necesario modificarla.
* El código respeta la arquitectura existente.
* El cambio es fácil de entender.
* La contribución resuelve un problema real.

---

# Organización del proyecto

Mantén la estructura del repositorio limpia y organizada.

```text
docs/
scripts/
bash/
git/
fastfetch/
btop/
```

Si es necesario crear una nueva carpeta, explica por qué.

---

# Estilo de desarrollo

ArchTower prioriza la consistencia sobre las preferencias personales.

Siempre que sea posible:

* Utiliza nombres descriptivos.
* Evita duplicar código.
* Prefiere funciones pequeñas.
* Reutiliza librerías existentes.
* Cada comando debe tener una única responsabilidad.

---

# Nuestra meta

ArchTower busca ofrecer:

* Confianza.
* Transparencia.
* Simplicidad.
* Reproducibilidad.
* Comodidad sin ocultar la complejidad.

Cada contribución debería acercar el proyecto a esos objetivos.

---

# Gracias

Si ArchTower te ayudó a aprender un poco más sobre Arch Linux, Bash o ingeniería de software, entonces el proyecto ya cumplió uno de sus principales objetivos.

Gracias por formar parte de esta comunidad.

— Joaquín "j0krat" Vejar

Proyecto iniciado en 2026
