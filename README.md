# Despliegue Automatizado de Aplicación Estática

Este script automatiza el proceso de despliegue de una aplicación web estática en un servidor. La aplicación utilizada es un sitio web estático contenido en el repositorio [devops-static-web](https://github.com/roxsross/devops-static-web), específicamente en la rama `devops-mariobros`.

## Requisitos

- Este script debe ejecutarse en un sistema operativo basado en Linux.
- Se requieren permisos de administrador (usuario ROOT) para ejecutar el script.

## Pasos del Script

1. **Actualización del Sistema:**
   - Se realiza una actualización del sistema operativo para asegurar que todos los paquetes estén al día.

2. **Verificación de Usuario ROOT:**
   - El script verifica si está siendo ejecutado con privilegios de usuario ROOT. Si no es así, el script se detiene.

3. **Instalación de Git:**
   - Se verifica si Git está instalado en el sistema. Si no está instalado, se instala automáticamente.

4. **Instalación de Apache y PHP:**
   - Se verifica la presencia de Apache en el sistema. Si no está instalado, se instala junto con PHP y sus extensiones necesarias.

5. **Clonación del Repositorio:**
   - Se verifica si la carpeta del repositorio (`devops-static-web`) ya existe. Si no existe, se clona el repositorio desde [GitHub](https://github.com/roxsross/devops-static-web) utilizando la rama `devops-mariobros`.

6. **Copia de Archivos al Directorio de Apache:**
   - Los archivos de la aplicación se copian en el directorio de Apache (`/var/www/html`).

---

**Nota:**
- Este script asume que se ejecuta en un entorno de desarrollo o prueba.
- La seguridad y la configuración específica pueden necesitar ajustes según el entorno de implementación.
- Asegúrese de revisar y comprender el contenido del script antes de ejecutarlo en un entorno de producción.
