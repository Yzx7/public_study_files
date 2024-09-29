// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "",t-tipo:"", t-para:"", authors: (),cursoName:"",docenteName:"", fecha:"",add:(("")),logo: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    margin: (left: 35mm, right: 35mm, top: 30mm, bottom: 30mm),
    numbering: "1",
    number-align: end,
  )
  set text(font: "New Computer Modern", lang: "es")
  show math.equation: set text(weight: 400)
  set heading(numbering: "1.1.")


  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.

  align(center)[ 
  #image("LogoUNMSM icon.png", height: 60pt)
  #v(10pt)
      #block(width: 100%)[
        #text(size: 16pt, weight: "extrabold")[
          Universidad Nacional Mayor de San Marcos
        ]
        
        #text(size: 11pt, weight: "extrabold")[
         Universidad del Perú. Decana de América
        ]
        
        #text(size: 12pt, weight: "extrabold")[
        Facultad de Ingeniería Electrónica y Eléctrica
        ]
        
        #text(size: 10pt, weight: "extrabold")[
        // EAP: Ing. Telecomunicaciones
        ]
   ]
  ]
  v(1fr)

 align(center)[
  
  #text(1.5em, weight: 700, title)
  #v(20pt)
  #text(1.5em, weight: 700, t-tipo)
  #v(20pt)
  #text(1.4em,  t-para)
  #v(1fr)


  // Author information.
//  #pad(
  //  top: 0.7em,
    //grid(
     // columns: (1fr,) * calc.min(3, authors.len()),
      //gutter: 1em,
      //..authors.map(author => align(start, strong(author))),
    // ),
  //)

   #text( weight: 700)[Autores:]
     #pad(
       bottom: 10pt,
   grid(
      columns: (1fr),
      gutter: 1em,
      ..authors.map(author => align(center, author)),
    )
    )

  ]
 align(center)[
     #grid(
   gutter: 12pt,
   ..add.map((ait) => 
   grid(columns: 2,
   gutter: 4pt,
   text(weight: 700)[#ait.at(0):],
   ait.at(1)
 ) ), )
 ]
  
if docenteName != "" {
  align(center)[
   #text( weight: 700)[Docente:]
   #docenteName
    ]
}
  
if cursoName != "" {
  align(center)[
    #text(weight: 700)[Curso:]
    #cursoName
    ]
}
if fecha != "" {
  align(center)[
   #text( weight: 700)[Fecha:]
   #fecha
    ]
}

 align(center)[
    #v(1.4fr)
    #text(size: 1.2em, weight: 700)[Lima, Perú]
    
    // #text(size: 1.2em, weight: 700)[30 de junio]
     
    #text(size: 1.2em, weight: 700)[2024]
]

  pagebreak()

  // Table of contents.
  // outline(depth: 3, indent: true,target: heading.where(outlined: true) )
  // pagebreak()
  // outline(depth: 3, indent: true,target: figure.where(kind: image), title: "Índice de Figuras"  )
  // pagebreak()
  // outline(depth: 3, indent: true,target: figure.where(kind: "table"), title: "Índice de tablas" )
  // pagebreak()


  // Main body.
  set par(justify: true)
  set text(hyphenate: false)

  body
}