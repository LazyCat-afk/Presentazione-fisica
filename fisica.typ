#import "touying/lib.typ": s, pause, meanwhile, utils, states, pdfpc, themes

#let s = themes.dewdrop.register(
  s,
  aspect-ratio: "16-9",
  footer: [Giulia Voltolina | Onde Stazionarie in Colonne d'Aria | Interferenza nel piano e nello spazio | Diffrazione],
  navigation: "mini-slides"
)
#let s = (s.methods.info)(
  self: s,
  title: [Presentazione Fisica],
  subtitle: [onde stazionarie in colonne d'aria - interferenza nel piano e nello spazio - diffrazione],
  author: [Giulia Voltolina],
  date: [2024-02-16],
  institution: [Liceo M. Buonarroti],
)
#let s = (s.methods.enable-transparent-cover)(self: s)
// #let s = (s.methods.appendix-in-outline)(self: s, false)
#let (init, slide, title-slide, focus-slide, touying-outline, alert) = utils.methods(s)
#show: init

#show strong: alert

#set text(font: "New Computer Modern")

#title-slide([x])

#slide[
  == Indice
  
  #touying-outline(cover: false)
]

#slide(section: [Onde stazionarie])[
  = Onde stazionarie in colonne d'aria

  Le onde stazionarie, oltre che sulle corde, possono formarsi anche in colonne d'aria (es. tubi "vuoti").

  Sono onde sonore longitudinali ($->$ lungo la colonna ci sono zone di rarefazione e zone di compressione).

  In un tubo, ad ogni base chiusa corrisponde un nodo e ad ogni base aperta corrisponde un ventre

 ][ 
  Quindi, in un tubo chiuso ad entrambe le estremità avremo due nodi esterni e la situazione sarà analoga alle onde stazionarie sulle corde:
#set align(left)
  $ λ_n = (2L)/n $
#set align(right)
  $ f_n = n(v/(2L)) $
#set align(center)
  con $L$: lunghezza del tubo e $v$: velocità del suono nel mezzo
]

#slide(subsection: [Tubo con una sola estremità chiusa])[
  == Tubo con una sola estremità chiusa

  #set align(left)
  #figure(
    image("./images/foto1.png", width: 60%)
  )
  ][
  #set align(right)
  \  
  \  
  $ λ_n = (4L)/(2n-1) $
  $ f_n = (2n-1)(v/4L) $
  
  A causa del fattore $(2n-1)$ possiamo ottenere solo le armoniche dispari.
]

#slide(subsection: [Esempi])[
  == Esempi 

  #link("https://www.youtube.com/watch?v=XpNbyfxxkWE")[- video Harvard University]

  #link("https://sciencedemonstrations.fas.harvard.edu/presentations/schlieren-optics")[- spiegazione strumento video Harvard]

  #link("https://www.acs.psu.edu/drussell/demos/standingwaves/standingwaves.html")[- animazione particelle]
]

#slide(section: [Interferenza])[
  = Interferenza su un piano o nello spazio

*Sorgenti coerenti*: sorgenti che oscillano con una differenza di fase sempre costante
#set align(left)
#figure(
  image("./images/sorgenti.png", width: 90%)
    )][


#align(center)[*Figura d'interferenza*:]

#set align(left)
    #figure(
      image("./images/interf1.png", width: 50%)
    )

#set align(right)
    #figure(
      image("./images/interf2.png", width: 50%)
    )
]

#slide(subsection: [Interferenza costruttiva])[
  == Interferenza costruttiva

  Si ha un'interferenza costruttiva quando le onde emesse dalle due sorgenti $S_1$ ed $S_2$ arrivano *in fase* nel punto $P$
  
#figure(
    image("./images/costr.png", width: 25%)
    )
#set align(center)
$overline(S_1 P) - overline(S_2 P) = k dot λ$ ; con $k in ZZ$
]

#slide(subsection: [Interferenza distruttiva])[
  == Interferenza distruttiva

  Si ha un'interferenza distruttiva quando le onde emesse dalle due sorgenti $S_1$ ed $S_2$ arrivano *in opposizione* nel punto $Q$

#figure(
    image("./images/distr.png", width: 45%)
    )][
\  
\  
#set align(center)
$overline(S_1 Q) - overline(S_2 Q) = (2k+1)(λ/2)$ ; con $k in ZZ$
\
\  
#link("https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html")[- simulazione interferenza (2)]
]

#slide(section: [Diffrazione])[
= Diffrazione

Quando un'onda incontra un ostacolo, o uno schermo con una fenditura, i fronti d'onda si incurvano e l'onda si espande anche oltre l'ostacolo.
\
\ 
#link("https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html")[- simulazione diffrazione (3 e 4)]

]

#let s = (s.methods.appendix)(self: s)
#let (slide,) = utils.methods(s)

#slide(section: [Appendice])[
  = Fonti

  The Pennsylvania State University

  Harvard University

  Il nuovo Amaldi per i licei scientifici blu
  
  Phet Colorado 
]
