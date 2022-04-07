"Ejercicio a",
for $nombre in doc("ejercicio_1_modulos_informatica.xml")//modulos/modulo/nombre/text()
return <nombre>{$nombre}</nombre>,

"Ejercicio b",
for $x in doc ("ejercicio_1_modulos_informatica.xml")//modulo
return if ($x/ciclo="ASIR")
then $x/nombre/text(),

"Ejercicio c",
for $h in doc ("ejercicio_1_modulos_informatica.xml")//modulo
return if ($h/curso= 2)
then <curso>{$h/nombre/text()}</curso>,

"Ejercicio d",
for $h in doc ("ejercicio_1_modulos_informatica.xml")//modulo
order by $h/nombre descending
return if ($h/curso= 1)
then <curso>{$h/nombre/text()}</curso>,

"Ejercicio e",
for $h in doc ("ejercicio_1_modulos_informatica.xml")//modulo
return if ($h/horasSemanales < 5)
then $h/nombre/text(),

"Ejercicio f",
count (//modulo[curso=1 and ciclo="ASIR"]),

"Ejercicio g",
for $x in doc ("ejercicio_1_modulos_informatica.xml")//modulo
return if ($x/horasSemanales > 3 )
then $x/horasSemanales/text()