"Ejercicio a",
for $x in doc("ejercicio_2_bailes.xml")//baile/nombre/text()
return $x,

"Ejercicio b",
for $x in doc("ejercicio_2_bailes.xml")//baile
return if ($x/sala/text()="1")
then <sala1>{$x/nombre/text()}</sala1>,

"Ejercicio c",
//baile[sala=2 and precio< 35],

"Ejercicio d",
for $x in doc("ejercicio_2_bailes.xml")//bailes/baile
where $x/precio/@cuota = "mensual"
return $x/profesor/text(),

"Ejercicio e",
for $x at $i in doc("ejercicio_2_bailes.xml")/bailes/baile
let $i:= $i - 3
return if($x/profesor="Jesús Lozano")
then
<bailes_lozano>
   <baile num="{$i}">
  <nombre>{$x/nombre/text()}</nombre>
  <plazas>{$x/plazas/text()}</plazas>
  <duracion>{$x/comienzo/text()} A {$x/fin/text()}</duracion>
   </baile>
</bailes_lozano>,

"Ejercicio f",

<html>
  <body>
    <table>{
      for $x in doc("ejercicio_2_bailes.xml")//
      baile
      order by $x/plazas
      return if($x/precio/@cuota="trimestral")
      then

        <tr>
          <td>{$x/nombre/text()}</td>
          <td>{$x/profesor/text()}</td>
          <td>{$x/plazas/text()}</td>
        </tr>
  }</table>
  </body>
</html>