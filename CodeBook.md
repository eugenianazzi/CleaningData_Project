### Variables [class / unit] (ENG)

* "features": stores the names of the measured and / or calculated variables. [character]
* "df.test" / "df.train": dataset corresponding to each study group. [datatable with integers]
* "subject.test" / "subject.train": identification and correlation of the volunteers with the observations. [integer]
* "act.test" / "act.train": stores in numerical form the activity that was carried out in the different observations. [integer]
* "totalDT": unified data table with the observations made both in train and test.
* "col.extract": array with the indices of the columns to be extracted in step 2.
* "dt2" / "dt2use": auxiliary data tables created to fulfill each step.
* "dt.tidy": final dataset with the average of each variable for each activity and each volunteer.


### Variables [class/unit] (ESP)

* "features": almacena los nombres de las variables medidas y/o calculadas. [character]
* "df.test"/"df.train": dataset correspondientes a cada grupo de estudio. [datatable with integers]
* "subject.test"/"subject.train": identificación y correlación de los voluntarios con las observaciones. [integer]
* "act.test"/"act.train": almacena de forma numérica la actividad que se realizó en las distintas observaciones. [integer]
* "totalDT": data table unificado con las observaciones realizadas tanto en train como test.
* "col.extract": array con los indices de las columnas a extraer en el step 2.
* "dt2" / "dt2use" : data tables auxiliares creados para cumplir con cada step.
* "dt.tidy": dataset final con el promedio de cada variable para cada actividad y cada voluntario.
