# GitHub: Colaboración y Repositorios Remotos

GitHub es una plataforma web que permite almacenar, compartir y colaborar en proyectos de código utilizando Git como sistema de control de versiones. Es el estándar para el trabajo en equipo y el desarrollo open source.

---

## ¿Qué es GitHub?

- Lanzado en 2008, GitHub es una plataforma para alojar repositorios Git en la nube.
- Permite a millones de desarrolladores colaborar, revisar código y gestionar proyectos.
- GitHub se basa en Git, pero agrega herramientas sociales, de gestión y automatización.

---

## Repositorios Remotos

Un **repositorio remoto** es una copia de tu proyecto almacenada en GitHub. Permite sincronizar cambios entre tu computadora y la nube.

- Para conectar tu repositorio local con GitHub:

```bash
git remote add origin https://github.com/usuario/repositorio.git
```

- Para subir cambios:

```bash
git push -u origin main
```

- Para clonar un repositorio existente:

```bash
git clone https://github.com/usuario/repositorio.git
```

---

## Permisos y Colaboradores

GitHub gestiona el acceso a los repositorios mediante permisos:

| Tipo  | Descripción                                                    |
| ----- | -------------------------------------------------------------- |
| Read  | Ver y clonar el repositorio                                    |
| Write | Leer, crear ramas, hacer commits y push                        |
| Admin | Control total: gestionar settings, permisos y eliminar el repo |

El propietario puede invitar colaboradores y asignar permisos desde la configuración del repositorio.

---

## Forks y Colaboración Externa

Un **fork** es una copia personal de un repositorio ajeno. Permite experimentar y proponer cambios sin afectar el original.

1. Haz fork de un repositorio con el botón "Fork" en GitHub.
2. Trabaja en tu copia (puedes hacer commits y push libremente).
3. Para proponer cambios al original, crea un Pull Request (PR).

---

## Pull Requests (PR)

Los **Pull Requests** son la herramienta principal para proponer, revisar y fusionar cambios en proyectos colaborativos.

### ¿Cómo funciona un PR?

1. Crea una rama y realiza tus cambios.
2. Sube la rama a GitHub (`git push origin rama-nueva`).
3. En GitHub, haz clic en "New Pull Request" y selecciona la rama origen y destino.
4. Describe tus cambios y solicita revisión.
5. El equipo revisa, comenta y aprueba o solicita cambios.
6. Una vez aprobado, se fusiona (merge) a la rama principal.

### Checklist antes de un PR

- Sin conflictos de merge.
- Código probado y funcional.
- Mensajes de commit claros.
- Elimina archivos innecesarios o temporales.

---

## Ramas en GitHub

Las **ramas** permiten desarrollar nuevas características o corregir errores sin afectar el código principal.

- Crea una rama:

```bash
git branch nueva-rama
git switch nueva-rama
# o en un solo paso
git checkout -b nueva-rama
```

- Sube la rama a GitHub:

```bash
git push origin nueva-rama
```

- En GitHub, puedes comparar y fusionar ramas mediante Pull Requests.

---

## Sincronización y Trabajo en Equipo

- Usa `git pull` para actualizar tu rama local con los últimos cambios del remoto.
- Resuelve conflictos de merge antes de hacer push o PR.
- Comunica los cambios importantes en los mensajes de commit y PR.
- Usa Issues y Projects de GitHub para organizar tareas y bugs.

---

## Resumen Visual

| Concepto        | Comando/Acción clave                   | ¿Para qué sirve?                |
| --------------- | -------------------------------------- | ------------------------------- |
| Clonar repo     | git clone URL                          | Copiar un repo remoto a tu PC   |
| Conectar remoto | git remote add origin URL              | Vincular local con GitHub       |
| Subir cambios   | git push origin rama                   | Enviar commits a GitHub         |
| Pull Request    | Crear PR en GitHub                     | Proponer y revisar cambios      |
| Fork            | Botón Fork en GitHub                   | Copiar y modificar repos ajenos |
| Permisos        | Settings > Collaborators & permissions | Gestionar acceso y roles        |

---

**GitHub potencia la colaboración, revisión y despliegue de proyectos de software a escala global.**
