
# Comandos Básicos de Linux y Docker

Este documento proporciona una lista de los comandos básicos de Linux y Docker para ayudar a los usuarios a comenzar a trabajar con ambos.

---

## Comandos Básicos de Linux

### 1. **Navegación y Gestión de Archivos**
- `ls`: Lista los archivos y directorios en el directorio actual.
  ```bash
  ls
  ```
- `cd <directorio>`: Cambia al directorio especificado.
  ```bash
  cd /home/usuario
  ```
- `pwd`: Muestra el directorio de trabajo actual.
  ```bash
  pwd
  ```
- `mkdir <directorio>`: Crea un nuevo directorio.
  ```bash
  mkdir nuevo_directorio
  ```
- `rm <archivo>`: Elimina un archivo.
  ```bash
  rm archivo.txt
  ```
- `rmdir <directorio>`: Elimina un directorio vacío.
  ```bash
  rmdir directorio_vacio
  ```

### 2. **Visualización de Archivos**
- `cat <archivo>`: Muestra el contenido de un archivo.
  ```bash
  cat archivo.txt
  ```
- `less <archivo>`: Muestra el contenido de un archivo de manera paginada.
  ```bash
  less archivo.txt
  ```
- `head <archivo>`: Muestra las primeras 10 líneas de un archivo.
  ```bash
  head archivo.txt
  ```
- `tail <archivo>`: Muestra las últimas 10 líneas de un archivo.
  ```bash
  tail archivo.txt
  ```

### 3. **Gestión de Usuarios y Permisos**
- `useradd <usuario>`: Crea un nuevo usuario.
  ```bash
  sudo useradd nuevo_usuario
  ```
- `passwd <usuario>`: Cambia la contraseña de un usuario.
  ```bash
  sudo passwd nuevo_usuario
  ```
- `chmod <permisos> <archivo>`: Cambia los permisos de un archivo.
  ```bash
  chmod 755 archivo.txt
  ```
- `chown <usuario>:<grupo> <archivo>`: Cambia el propietario y grupo de un archivo.
  ```bash
  sudo chown usuario:grupo archivo.txt
  ```

---

## Comandos Básicos de Docker

### 1. **Gestión de Contenedores**
- `docker run <imagen>`: Ejecuta un contenedor a partir de una imagen.
  ```bash
  docker run ubuntu
  ```
- `docker ps`: Muestra los contenedores en ejecución.
  ```bash
  docker ps
  ```
- `docker ps -a`: Muestra todos los contenedores (en ejecución y detenidos).
  ```bash
  docker ps -a
  ```
- `docker stop <contenedor_id>`: Detiene un contenedor en ejecución.
  ```bash
  docker stop contenedor_id
  ```
- `docker rm <contenedor_id>`: Elimina un contenedor detenido.
  ```bash
  docker rm contenedor_id
  ```

### 2. **Gestión de Imágenes**
- `docker build .`: Construir imagen a partir del docker file.
  ```bash
  docker build .
  ```

- `docker pull <imagen>`: Descarga una imagen desde Docker Hub.
  ```bash
  docker pull nginx
  ```
- `docker images`: Muestra las imágenes locales disponibles.
  ```bash
  docker images
  ```
- `docker rmi <imagen_id>`: Elimina una imagen.
  ```bash
  docker rmi imagen_id
  ```

### 3. **Manejo de Volúmenes**
- `docker volume create <volumen>`: Crea un volumen.
  ```bash
  docker volume create mi_volumen
  ```
- `docker volume ls`: Lista los volúmenes existentes.
  ```bash
  docker volume ls
  ```
- `docker volume rm <volumen_id>`: Elimina un volumen.
  ```bash
  docker volume rm volumen_id
  ```

### 4. **Manejo de Redes**
- `docker network ls`: Muestra las redes creadas.
  ```bash
  docker network ls
  ```
- `docker network create <red>`: Crea una nueva red.
  ```bash
  docker network create mi_red
  ```

### 5. **Ejecutar Comandos en un Contenedor**
- `docker exec -it <contenedor_id> <comando>`: Ejecuta un comando dentro de un contenedor en ejecución.
  ```bash
  docker exec -it contenedor_id bash
  ```

### 6. **Exponer Puertos**
- `docker run -p <puerto_host>:<puerto_contenedor> <imagen>`: Mapea puertos del contenedor al host.
  ```bash
  docker run -p 8080:80 nginx
  ```

---

## Referencias

Para más detalles sobre los comandos de Docker, consulta la [documentación oficial de Docker](https://docs.docker.com/).

Para más detalles sobre los comandos de Linux, consulta el [manual de Linux](https://www.gnu.org/software/bash/manual/).
