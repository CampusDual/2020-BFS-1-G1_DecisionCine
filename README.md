# Proyecto - Equipo Apple - Grupo 1
# Decisión Cine

## Devel Team

* **Margarita Ledo Chao** - [MargaritaLedo](https://github.com/MargaritaLedo)
* **Diego Silva Hermida** - [a17diegosh](https://github.com/a17diegosh)
* **Germán Corbelle Pasarín** - [germancorbelle](https://github.com/germancorbelle)

Resumen del proyecto
------------------------------------------------------------------------

* Resumen rápido 
    - **Historias de usuario**:
      > HU <https://campusdual.sharepoint.com/:w:/s/grupoa.fullstack-MargaritaDiegoGermn/EaXfWxTaiYBCtUVZrNP1gE0B730m8VOvPhPo-7Ve-63WAA?e=rn4kXz>

* Version 
    - v0.0.0

Configuración
-------------

* Resumen de configuración 

## Pasos para generar un arquetipo:
1. Clonar el proyecto mediante el comando ``git clone https://github.com/ontimize/basicproject.git``
1. **cd** en la carpeta del proyecto
1. Ejecutar el comando&nbsp;&nbsp;&nbsp;``mvn archetype:create-from-project``
1.  Para visualizar la estructura del proyecto moverse a la carpeta&nbsp;&nbsp;&nbsp;``target/generated-sources/archetype``&nbsp;&nbsp;y una vez ahí ejecutar el comando&nbsp;&nbsp;``tree``
1. Para descartar la carpeta&nbsp;&nbsp;``target``&nbsp;&nbsp;del proyecto ejecutar&nbsp;&nbsp;&nbsp;``mvn clean``
1. Dentro de la carpeta&nbsp;&nbsp;``src/main/resources/META-INF/maven``&nbsp;&nbsp;se encuentra el archivo&nbsp;&nbsp;**archetype-metadata.xml**
El contenido de ese fichero debería ser algo así:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<archetype-descriptor xsi:schemaLocation="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0 http://maven.apache.org/xsd/archetype-descriptor-1.1.0.xsd" name="basicproject"
    xmlns="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <fileSets>
    <fileSet encoding="UTF-8">
      <directory></directory>
      <includes>
        <include>.gitignore</include>
        <include>basicproject-database.launch</include>
        <include>build.bat</include>
        <include>README.md</include>
      </includes>
    </fileSet>
  </fileSets>
  <modules>
    <module id="${rootArtifactId}-api" dir="api" name="${rootArtifactId}-api">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-frontend" dir="frontend" name="${rootArtifactId}-frontend">
      <fileSets>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.html</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
        <fileSet encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.</include>
            <include>**/*.css</include>
            <include>**/*.ico</include>
            <include>**/*.scss</include>
            <include>**/*.md</include>
            <include>**/*.png</include>
            <include>**/*.json</include>
            <include>**/*.js</include>
            <include>**/*.ejs</include>
            <include>**/*.ts</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-boot" dir="boot" name="${rootArtifactId}-boot">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
        <fileSet encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.yml</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-model" dir="model" name="${rootArtifactId}-model">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.xml</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/db</directory>
          <includes>
            <include>**/*.txt</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-ws" dir="ws" name="${rootArtifactId}-ws">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
  </modules>
</archetype-descriptor>
```
7. Crear el Arquetipo (de nuevo) con&nbsp;&nbsp;``mvn install``
1. Para generar un proyecto del arquetipo ejecutar el comando&nbsp;&nbsp;``mvn archetype:generate``

## Propiedades del proyecto

- El cliente web se sitúa en la carpeta&nbsp;&nbsp;``frontend/src/main/resources/webapp``
- El archivo&nbsp;&nbsp;[build.bat](https://github.com/ontimize/basicproject.git/blob/master/build.bat)&nbsp;&nbsp;se ejecuta cuando se realiza un&nbsp;&nbsp;``mvn install``&nbsp;&nbsp;en la carpeta base del proyecto.
Si no encuentra la carpeta node_modules la crea, genera el build del cliente web y lo mueve a la carpeta public.


## Ejecución del proyecto

- Para ejecutar la base de datos lanzamos el archivo&nbsp;&nbsp;[basicproject-database.launch](https://github.com/ontimize/basicproject.git/blob/master/basicproject-database.launch)
- Para ejecutar el servidor lanzamos el archivo&nbsp;&nbsp;[ServerApplication.java](https://github.com/ontimize/basicproject.git/blob/master/boot/src/main/java/com/imatia/basicproject/boot/core/ServerApplication.java)&nbsp;&nbsp;situado en el paquete&nbsp;&nbsp;``com.imatia.basicproject.boot.core``
- Para visualizar el cliente web vamos a la url&nbsp;&nbsp;[http://localhost:8080/app/index.html](http://localhost:8080/app/index.html)

------------------------------------------------------------------------

* Estructura del repositorio 
* Dependencias 
* Configuración de base de datos 
* Cómo ejecutar pruebas 
* Instrucciones de implementación 

Pautas de contribución
----------------------

* Primeros pasos 
    - **Clonando** el repositorio:
      > git clone <https://github.com/CampusDual/ProyectoGAG1.git>
    - Descargando **ramas** del repo a nuestro ***working directory***:
      > git pull origin <rama>
    - Añadiendo un **repo remoto**:
      > git remote add <direccion repo github>
  
* Pasos para subir cambios 
    - Ramas:
          + **master**: rama principal donde se encuentra la **version estable**, lo que se ponga en esta rama debe ser funcional.
      > git push origin master
          + **desarrollo**: rama que surge a partir de **master**, en ella se icorporan las nuevas caracteristicas para integrar con la rama master una vez aprobadas.
      >git push origin develop
          + **[nombre]**: rama personal en la que trabaja cada miembro en sus tareas; una vez completadas las tareas se integrará la rama con la rama **develop**.
      >git push origin [nombre] (opcional)

          - Como crear rama || crear rama y moverse a la rama creada
        > git branch [nombre de la rama] || git checkout -b [nombre de la rama]
          - Como movernos entre ramas:
        > git checkout [nombre de rama]      

    - Commit:
          + Comenzar con letra mayuscula
		   + terminar sin punto
          + no debe contener más de 50 caracteres(reco)
          + debe explicar que cambios se realizaron
    
      > p.e: git commit -m 'Implementa funcion que detecta el nivel de llenado del contenedor' [nombre del archivo]    
    
      **evita comentarios del estilo:**
          
      > 'commit 1', 'commit de prueba', 'funcion detectarLLenado hecha', etc...

    - Comandos para **commit**:
          1. visualizar los cambios en el working directory y en la staging area comparado con el repositorio:
      > git status
          2. agregar un archivo a staging area || agregar todos los archivos a staging area
      > git add [nombre del archivo] || git add . 
          3. commitear un archivo y escribir mensaje en terminal || commitear todos los archivos y escribir mensaje en terminal
      > git commit -m '<mensaje>' [nombre del archivo] || git commit -am '<mensaje>'
      
      abre el editor de texto por defecto para escribir el mensaje del commit.
        
      > git commit -a || git commit [nombre del archivo]

    - Versionado: se empleara vX.Y.Z
          + X: verison principal del software
          + Y: nuevas funcionalidades
          + Z: revision de codigo por algun fallo, correccion de bugs.          
          + para crear el tag de la version || crear tag con mensaje
          
          > git tag vX.Y.Z || git tag -a vX.Y.Z -m "<mensaje de la version>"
                    
          + para subir el tag
          
          >git push origin <tag> || ej: git push origin v0.0.0 
                   

* Nombres documentos 
* Otras pautas
     -### Configuración ###


1 -- //TODO

2 -- //TODO

3 -- //TODO
	
4 -- //TODO