# Getting & Cleaning Data Course Project
@eugenianazzi from Argentina, Agosto 2020

## Notes
You only need to run the "run_analysis.R" script, to perform the full analysis requested in this project.

This script:

* Download the ZIP file that provides the data to be processed and unzip it.

* Before making the merge between the "train" and "test" datasets, the information corresponding to "subject" and "activity" is added to each set so as not to lose traceability. This information is found in the files "/test/subject_test.txt", "/train/subject_train.txt", "/test/y_test.txt", "/train/y_train.txt".

* Step 1: With the complete datasets, the merge (rbind) is performed, obtaining a single dataset with all the observations.

* Step 2: Only extract the columns whose names end in "mean()" or "std()". By my own criteria, it makes sense to me that each calculated average has its corresponding standard deviation. The variables "subject" and "activity" are also kept in the dataset.

* Step 3: To name the activities in the dataset, use the names established in the file "activity_labels.txt"

* Step 4: Rename the dataset variables removing the "()", replacing the initial "t" with "time" and the initial "f" with "freq". This was my option to make the variables more descriptive. It does not meet certain requirements to be "tidy" variable names, for example it has uppercase; converting everything to lowercase seems cumbersome to me for this case.

* Step 5: Concatenate operations on the data frame of step 4, to obtain the final data frame. First group by "subject" and "activity"; then it performs a summarize operation, calculating the average of all the variables (it does not consider the 'NA's).

Finally, the text file is created with the resulting data frame in the last step, necessary to upload to the Coursera platform.


## Notas para hispanohablantes, como yo! 
Sólo debe ejecutar el script "run_analysis.R", para realizar el análisis completo solicitado en este proyecto.

Este script:

* Descarga el archivo ZIP que provee los datos a procesar y lo descomprime.

* Antes de realizar la unión entre los datasets "train" y "test", a cada set se le añade la información correspondiente a "subject" y "activity" para no perder trazabilidad. Esta información se encuentra en los archivos "/test/subject_test.txt", "/train/subject_train.txt", "/test/y_test.txt", "/train/y_train.txt".

* Step 1: Con los datasets completos, se realiza el merge (rbind), obteniendo un único dataset con todas las observaciones.

* Step 2: Sólo extrae las columnas cuyos nombres finalizan en "mean()" o "std()". Por criterio propio, para mí tiene sentido que cada promedio calculado tenga su correspondiente desvío estándar. También se mantiene en el dataset las variables "subject" y "activity".

* Step 3: Para nombrar las actividades en el dataset, se usan los nombres establecidos en el archivo "activity_labels.txt"

* Step 4: Renombra las variables del dataset eliminando los "()", reemplazando las "t" iniciales con "time" y las "f" iniciales con "freq". Esta fue mi opción para que las variables sean más descriptivas. No cumple ciertos requisitos para que sean nombres de variables "tidy", por ejemplo posee mayúsculas; convertir todo a minúscula me parece engorroso para este caso.

* Step 5: Concatena operaciones sobre el data frame del step 4, para obtener el data frame final. Primero agrupa por "subject" y "activity"; luego realiza una operación de summarize, calculando el promedio de todas las variables (no considera los 'NA's).

Por último se crea el archivo de texto que tiene el data frame resultante en el último step, necesario para cargar a la plataforma de Coursera.

