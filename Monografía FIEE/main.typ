#import "template.typ": *


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Aplicaciones de las ecuaciones diferenciales ordinarias",
  t-tipo:"Monografía",
  t-para:"Para obtener nota en el curso de EDO",
  cursoName:"EDO",
  // docenteName:"David Pareja Quispe",
  authors: (
  "Rodriguez Puza Gerson Yuri 23190107",
  "Rojas Crisostomo Ronald Enrique 23190346",
  "Gordillo Carmen Ghyrodet Antony 23190015",
  "Rojas Crisostomo Ronald Enrique 23190346",
  ),
  add:(
    ("Semestre","2024-II"),
    // ("Horario","Miércoles 4 - 6 pm"),
    ("Docente","Guardia Cayo")
  )
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#include "chapters/intro.typ"
#include "chapters/objetivos.typ"
#include "chapters/procedimiento.typ"
#include "chapters/questionnaires.typ"

// #pagebreak()

// #bibliography("bib.bib", style: "institute-of-electrical-and-electronics-engineers", title: "Referencias bibliográficas")