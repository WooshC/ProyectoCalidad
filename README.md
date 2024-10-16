# GR06_1BT2_622_24A
Proyecto web de prueba

# Configuración de Servidor Web en NetBeans

Este proyecto Java está configurado para ser ejecutado en un servidor web utilizando NetBeans. A continuación, se detallan los pasos necesarios para configurar el entorno y desplegar la aplicación.

## 1.Requisitos

- **NetBeans IDE** (versión 12.0 o superior)
- **Java Development Kit (JDK)** (versión 11 o superior)
- **Servidor de Aplicaciones**:
  - Apache Tomcat 9.0 (o superior)

## 2.Instalación
### Instalar Apache Tomcat

1. Descarga **Tomcat 9** o superior desde la [página oficial de Apache Tomcat](https://tomcat.apache.org/).
2. Descomprime el archivo en una ubicación de tu preferencia.
*Nota: Asegurarse de recodar el puerto para utilizarlo*

## 3.Configuración

Sigue los pasos a continuación para configurar el servidor en **NetBeans**:

1. Abrir **NetBeans**.
2. Buscar la pestaña **Tools** 
3. Buscar la pestaña **Servicios** en el panel lateral.
4. Haz clic derecho en **Servidores** y selecciona **Añadir Servidor**.
5. Elige el tipo de servidor que deseas configurar (**Apache Tomcat**).
6. Proporciona la ruta donde descomprimiste el servidor en el campo correspondiente.
7. De ser necesario crear el usuario y contraseña. (Grupo 5 Username : Password: polizone)
8. Hacer clic en **Finalizar**.

## 4. Asignar el Servidor a tu Proyecto

1. En la pestaña **Proyectos**, hacer clic derecho en el proyecto y seleccionar **Propiedades**.
2. Seleccionar la opción **Ejecutar** en el menú lateral.
3. Bajo la sección **Servidor**, seleccionar el servidor que se configuro en el paso anterior.
4. Hacer clic en **Aceptar**.

## 5. Ejecutar el Proyecto

1. Hacer clic derecho sobre el proyecto y seleccionar **Ejecutar** o **Depurar**.
2. El servidor se iniciará y la aplicación web debería desplegarse automáticamente.
3. Se abrirá una ventana en el navegador con la URL donde se encuentra la aplicación, de no ser asi generalmente se encuentra en `http://localhost:puerto/PaginaWebPoli/`.
