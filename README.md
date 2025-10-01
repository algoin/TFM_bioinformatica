
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

La ejecución del análisis integrativo se lleva a cabo a través del archivo daemon.sh. Este se ejecuta en una terminal de linux precedido de "./". Este archivo descarga el interactoma humano de string y prepara 


