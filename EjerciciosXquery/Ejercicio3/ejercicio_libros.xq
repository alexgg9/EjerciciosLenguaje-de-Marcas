"Ejercicio a",

//libro/titulo/text(),

"Ejercicio b",

for $x in doc ("ejercicio_3_libros.xml")//libro
return if ($x/@year = "2000")
then <año2000>{$x/titulo/text()}</año2000>,

"Ejercicio c",

for $x in doc ("ejercicio_3_libros.xml")//libro
return if ($x/@year >= "1995" and $x/@year <= "2000" )
then $x/titulo/text(),

"Ejercicio d",

for $x in doc ("ejercicio_3_libros.xml")//libro
return if ($x/autor/apellido = "Stevens")
then $x/titulo/text(),

"Ejercicio e",

for $x in doc ("ejercicio_3_libros.xml")//libro
return if ($x/editorial = "Addison-Wesley")
then $x/titulo/text(),

let $x := doc("ejercicio_3_libros.xml")//libro[editorial = "Addison-Wesley"]/titulo
return $x,

"Ejercicio f",

for $x in //libro
order by $x/precio
return if(count($x/autor) = 1)
then $x/titulo/text(),

"Ejercicio g",

for $x in //libro
order by $x/titulo
return if(count($x/autor) >2)
then $x/titulo/text(),

"Ejercicio h",
for $x in //libro
return ($x/@year, $x/titulo/text(), count($x/autor)),

"Ejercicio i",

for $x in //libro
return 
  <resumen_bib>
   <libro>
    <titulo>{$x/titulo/text()}</titulo>
    <año>{$x/@year}</año>
    <num_autores>{count($x/autor)}</num_autores>
   </libro>
</resumen_bib>,

"Ejercicio j"