### Variables [class/unit]

* "features": almacena los nombres de las variables medidas y/o calculadas. [character]
* "df.test"/"df.train": dataset correspondientes a cada grupo de estudio. [datatable with integers]
* "subject.test"/"subject.train": identificación y correlación de los voluntarios con las observaciones. [integer]
* "act.test"/"act.train": almacena de forma numérica la actividad que se realizó en las distintas observaciones. [integer]
* "totalDT": data table unificado con las observaciones realizadas tanto en train como test.
* "col.extract": array con los indices de las columnas a extraer en el step 2.
* "dt2" / "dt2use" : data tables auxiliares creados para cumplir con cada step.
* "dt.tidy": dataset final con el promedio de cada variable para cada actividad y cada voluntario.
