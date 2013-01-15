% 
\relative f' {
  \clef "G_8"
  
  \key g \minor
  
  \time 4/4
  
  \tag #'aCappella { R1*4 }
  \tag #'solo { R1*4 }
  r2 ^\markup \bold "Capella" r4 bes,
  es es es es 
  es es es es,
  R1
  r2 r4 c
  c' c c c
  c c c c,
  R1*3
  r4 d d' d
  d d d d
  d d, r2
  R1
  r2 r4 g
  g g g g
  g g g g
  \tag #'solo { R1*6 }
  \tag #'aCappella { R1*5 }
  
  \bar "|."
  
}
