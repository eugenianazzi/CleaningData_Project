# Getting & Cleaning Data Course Project
@eugenianazzi from Argentina, Agosto 2020

## Notas en Español
Sólo debe ejecutar el script "run_analysis.R", para realizar el análisis completo solicitado en este proyecto.

Este script:
1 - Descarga el archivo ZIP que provee los datos a procesar y lo descomprime
2 - Antes de realizar la unión entre los datasets "train" y "test", a cada set se le añade la información correspondiente a "subject" y "activity" para no perder trazabilidad. Esta información se encuentra en los archivos "/test/subject_test.txt", "/train/subject_train.txt", "/test/y_test.txt", "/train/y_train.txt".
3 - Step 1: Con los datasets completos, se realiza el merge (rbind), obteniendo un único dataset con todas las observaciones.
4 - Step 2: Sólo extrae las columnas cuyos nombres finalizan en "mean()" o "std()". Por criterio propio, para mí tiene sentido que cada promedio calculado tenga su correspondiente desvío estándar. También se mantiene en el dataset las variables "subject" y "activity".
5 - Step 3: Para nombrar las actividades en el dataset, se usan los nombres establecidos en el archivo "activity_labels.txt"
6 - Step 4: Renombra las variables del dataset eliminando los "()", reemplazando las "t" iniciales con "time" y las "f" iniciales con "freq". Esta fue mi opción para que las variables sean más descriptivas. No cumple ciertos requisitos para que sean nombres de variables "tidy", por ejemplo posee mayúsculas; convertir todo a minúscula me parece engorroso para este caso.
7 - Step 5: Concatena operaciones sobre el data frame del step 4, para obtener el data frame final. Primero agrupa por "subject" y "activity"; luego realiza una operación de summarize, calculando el promedio de todas las variables (no considera los 'NA').

Por último se crea el archivo de texto que tiene el data frame resultante en este step, necesario para cargar a la plataforma de Coursera.

