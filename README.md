
# TFM_bioinformatica
La ejecución del análisis de expresión diferencial y el enriquecimiento funcional por parte de ExpHunter Suite realizada en este trabajo viene descrito en el archivo launch.sh. Para llevarlo a cabo, se abre una terminal de linux y se ejecuta precedido de "./". El contenido de este archivo es el siguiente:

      export DEGHUNTER_MODE='DEVELOPMENT'
      degenes_Hunter.R -i $data_folder/"all_counts" -o $results_folder -t $data_folder"/target_cur.txt" -m ED -p 0.05 -f 1
      download_KEGG_file.R
      functional_Hunter.R -i $results_folder -t E -c 6 -o $results_folder/functional_enrichment -m Human

El análisis de expresión diferencial se lleva a cabo a través de la función degenes_Hunter.R, mientras que el enriquecimiento funcional se lleva a cabo a través de la función functional_Hunter.R. Además, para realizar el enriquecimiento funcional primero se carga los archivos de la base de datos KEGG, para poder basar el análisis en esta base de datos.

La variable data_folder contiene la ruta al directorio que contiene el archivo que contiene las etiquetas de las muestran que se van a comparar en el
análisis, y results_folder contiene la ruta al directorio donde se va a generar los resultado, y en caso de no existir lo crea. El caso que se muestra 

El caso que se muestra en el archivo launch.sh es una comparación general que enfrenta todos los controles frente a todos los pacientes. De manera que la función degenes_Hunter.R cambia su parámetro -t para cada una del resto de comparaciones.

La ejecución del análisis integrativo se lleva a cabo a través del archivo daemon.sh. Este se ejecuta en una terminal de linux precedido de "./". Este archivo descarga el interactoma humano de string, prepara un diccionario que relaciona los códigos ENSP con los códigos ENSG y finalmente crea todas las variables necesarias para usar una plantilla de autoflow (gestor de flujos de trabajo) que tiene las tareas para hacer el análisis integrativo (redes). Esta plantilla es el archivo template.af que se encuentra dentro del directorio template.

-----------------------------------------------------------------------------------------------------------------------------------------------------------

Por otro lado, durante la instalación de la herramienta ExpHunter Suite surgieron varios problemas En primer lugar,La instalación del software ExpHunter Suite se realizó creando un nuevo directorio y clonando el repositorio de Github en el de la siguiente forma:

      mkdir installed_software
      cd installed_software
      git clone https://github.com/seoanezonjic/ExpHunterSuite.git

Y se añade la ruta al archivo .bashrc:

      export
      PATH=/home/user/installed_software/ExpHunterSuite/inst/scripts:$PATH

De esta forma, se instala la versión más actualizada y disponible del software. En este punto, surgieron problemas en la instalación de de ciertas dependencias de manera que se realizó su instalación manual con la siguiente línea de código:

      sudo apt-get install libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev

Además, se instaló manualmente las librerías devstool y htmlreportR junto con sus dependencias, abriendo la consola de R en el directorio donde se había clonado el repositorio de GitHub:
      
      install.packages("devtools")
      devtools::install_deps()
      devtools::install_github("https://github.com/AEstebanMar/htmlreportR")

Para comprobar la correcta instalación del software se usó la ayuda deel comando del análisis de expresión diferencial (degenes_Hunter.R --help).
Sin embargo, la terminal mostraba un mensaje de error porque algunos paquetes no se habían instalado correctamente, por lo que se instalaron de
manera manual abriendo la consola de R en este mismo directorio y usando install.packages("").





