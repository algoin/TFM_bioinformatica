#! /usr/bin/env bash

data_folder="./Datos/"
results_folder="./Resultados2/controlvpacientes"

export DEGHUNTER_MODE='DEVELOPMENT'

degenes_Hunter.R -i $data_folder/"all_counts" -o $results_folder -t $data_folder"/target_cur.txt" -m ED -p 0.05 -f 1
download_KEGG_file.R
functional_Hunter.R -i $results_folder -t E -c 6 -o $results_folder/functional_enrichment -m Human
