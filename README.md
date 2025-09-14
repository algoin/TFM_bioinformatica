# TFM_bioinformatica
##Instalación del ExpHunter Suite
La instalación del software ExpHunter Suite se realizó creando un nuevo directorio y clonando el repositorio de Github en el de la siguiente forma:

      mkdir installed_software
      cd installed_software
      git clone https://github.com/seoanezonjic/ExpHunterSuite.git

Y se añade la ruta al archivo .bashrc:

      export
      PATH=/home/user/installed_software/ExpHunterSuite/inst/scripts:$PATH

De esta forma, se instala la versión mas actualizada y disponible del software. Sin embargo, la instalación en este caso necesito de la instalación 
de ciertas dependencias de manera manual en la terminal de ubuntu. Asímismo, los dependencias libharfbuzz-dev libfribidi-dev
libfreetype6-dev 0libpng-dev libtiff5-dev y libjpeg-dev se instalaron ejecutando la siguiente linea de código:

      sudo apt-get install libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev

Una vez, instaladas las dependencias se va abre la consola de R dentro de la carpeta donde se clonó el repositorio de Github, y se instalan las librerías 
devstool y htmlreportR junto con sus dependencias:
      
      install.packages("devtools")
      devtools::install_deps()
      devtools::install_github("https://github.com/AEstebanMar/htmlreportR")

Además, algunos paquetes que usa ExpHunter Suite tuvieron que ser instalados manualmente dentro de la consolo de R usando install.packages(""). 

##Ejecución de ExpHunter Suite

Una vez instalado el programa se prodece a realizar el análisis funcional
