# TFM_bioinformatica
La ejecución del análisis de expresión diferencial y el enriquecimiento funcional por parte de ExpHunter Suite realizada en este trabajo
viene descrito en el archivo launch.sh. Para llevarlo a cabo, se abre una terminal de linux y se ejecuta precedido de "./". El contenido
de este archivo es el siguiente:
      export DEGHUNTER_MODE='DEVELOPMENT'
      degenes_Hunter.R -i $data_folder/"all_counts" -o $results_folder -t $data_folder"/target_cur.txt" -m ED -p 0.05 -f 1
      download_KEGG_file.R
      functional_Hunter.R -i $results_folder -t E -c 6 -o $results_folder/functional_enrichment -m Human

