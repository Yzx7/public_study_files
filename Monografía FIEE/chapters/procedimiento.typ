#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx, cellx
#import "@preview/cetz:0.2.2": canvas, plot
#import "@preview/cetz:0.2.2"

= Procedimiento
== Medición de ángulos de incidencia y reflexión
+ *Colocación del espejo plano*: Se ubica el espejo plano sobre un *disco óptico*, definiendo la normal a la superficie del espejo. La normal es la línea imaginaria perpendicular a la superficie del espejo.
   
+ *Proyección del puntero láser*: Se dirige un puntero láser hacia la superficie del espejo, seleccionando diferentes *ángulos de incidencia* (θi). Los ángulos seleccionados en este caso fueron 10°, 20°, 30°, 40°, 50°, 60°, 80° y 90°.

+ *Medición del ángulo de reflexión*: Para cada uno de los ángulos de incidencia mencionados, se midió el *ángulo de reflexión (θr)* correspondiente. Se anotaron los valores obtenidos en una tabla, considerando una incertidumbre de ±0,5° en las mediciones.

== Medición de la distancia objeto-imagen
+ *Colocación del espejo sobre papel cuadriculado*: Se situó el espejo con la cara reflectante perpendicular a un papel cuadriculado, lo que facilitó la medición precisa de distancias.

+ *Trazado de líneas de referencia*: Se dibujaron dos líneas sobre el papel, una a lo largo de la base del espejo y otra perpendicular al espejo, para marcar la posición exacta del objeto y la imagen.

+ *Colocación de los objetos lineales*: Se colocó un lápiz (u otro objeto lineal) paralelo al espejo, a diferentes distancias del mismo (50 mm, 100 mm, 150 mm, 200 mm, 250 mm y 300 mm).

+ *Superposición de la imagen y el objeto*: Para cada una de las distancias del objeto al espejo, se colocó un segundo lápiz detrás del espejo, superponiéndolo a la imagen virtual del primer lápiz.

+ *Medición de distancias*: Se midió la *distancia de la imagen del lápiz al espejo*, considerando una incertidumbre de ±0,5 mm en cada medición.

= Resultados

== Ley de reflexión


#figure(
  tablex(
    columns: 2,
    align: center + horizon,
    fill: (col, row) => (
      if row == 0 {
        rgb("#e0e0e0")
      }else if col == 0 or col == 1 or col == 2 or col == 3  or row ==1{
          rgb("#F5F5F5")  
        } else if col == 2{
          // rgb("#F5F5F5")  
        }
      // if calc.rem(col,2) == 0{
      // rgb("#e0e0e0")  
      // }
       
    ),
    
    [$theta_i plus.minus 0.25$ ],[$theta_r plus.minus 0.25$],
    [10],[11.5],
    [20],[20.5],
    [30],[31.5],
    [40],[40.5],
    [50],[49.5],
    [60],[59.5],
    [80],[79.5],

    
    map-rows: (row, cells) => cells.map(c =>c

    ),
    ),kind: "table",supplement: [Tabla], caption: "Tablero de valores de angulos de incidencia y reflexión medidos." )<tablGadeVoltAmp3>




#image("image02.png")



== Simetría de reflexión
#figure(
  tablex(
    columns: 2,
    align: center + horizon,
    fill: (col, row) => (
      if row == 0 {
        rgb("#e0e0e0")
      }else if col == 0 or col == 1 or col == 2 or col == 3  or row ==1{
          rgb("#F5F5F5")  
        } else if col == 2{
          // rgb("#F5F5F5")  
        }
      // if calc.rem(col,2) == 0{
      // rgb("#e0e0e0")  
      // }
       
    ),
    
    [$S_o plus.minus 0.5$ ],[$S_i plus.minus 0.5$],
    [28],[28],
    [36],[36.5],
    [42],[42],
    [52.5],[53],
    [75],[75.5],
    map-rows: (row, cells) => cells.map(c =>c

    ),
    ),kind: "table",supplement: [Tabla], caption: "Tablero de medición de distancias objeto e imagen." )<tablGadeVoltAmp3>
    #image("image56.png")