# TFM_bioinformatica
Instalación del ExpHunter Suite
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

Una vez instaladas las dependencias se abre la consola de R dentro de la carpeta donde se clonó el repositorio de Github, y se instalan las librerías 
devstool y htmlreportR junto con sus dependencias:
      
      install.packages("devtools")
      devtools::install_deps()
      devtools::install_github("https://github.com/AEstebanMar/htmlreportR")

Para comprobar la correcta instalación del software se usó la ayuda deel comando del análisis de expresión diferencial (degenes_Hunter.R --help?.
Sin embargo, la trminal mostraba un mensaje de error porque algunos paquetes no se habina instalado correctamente, por lo que se instalaron de
manera manual abriendo la consola de R en el directorio installed_software y usando install.packages("").

Ejecución de ExpHunter Suite

Una vez instalado el programa se prodece a realizar el análisis funcional y el enriquecimiento funcional por medio de los comandos degenes_Hunter.R y
functional_Hunter.R respectivamente. Los comandos y parámetros de esta forma son los siguientes:

      export DEGHUNTER_MODE='DEVELOPMENT'
      degenes_Hunter.R -i $data_folder/"all_counts" -o $results_folder -t $data_folder"/target_cur.txt" -m ED -p 0.05 -f 1
      download_KEGG_file.R
      functional_Hunter.R -i $results_folder -t E -c 6 -o $results_folder/functional_enrichment -m Human

La variable data_folder contiene la ruta al directorio que contiene el archivo que contiene las etiquetas de las muestran que se van a comparar en el
análisis, y results_folder contiene la ruta al directorio donde se va a generar los resultado, y en caso de no existir lo crea. El caso que see emuestra 
en la linea de comandos es una comparación general que enfrenta todos los controles frente a todos los pacientes. De manera que este archivo cambia para 
cada una del resto de comparaciones.
