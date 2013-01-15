\repeat volta 2 {
    \times 4/5 { f,8 [ g16 f es ] } f4 ~ |
    f4. f8 |
    bes8 [ c16 bes ] \times 4/5 { a8 [ bes16 a g ] } 
    g16 [ f] f8  ~ f4 ~
    f4. f8 
    bes8. [ c32 bes ] a8. [ bes32 a ]
    g2 ~ 
    g8 bes a [ g ] 
    f32 [ es ] f8. ~ f4 ~
    f4. f8 
    d'8 c c bes
    bes4. f8 
    \set melismaBusyProperties = #'() \tupletUp \override TupletBracket #'bracket-visibility = ##t
    \times 4/5 { d'8 [ c16 c bes ] } \unset melismaBusyProperties \tupletNeutral \override TupletBracket #'bracket-visibility = #'if-no-beam
    bes4~
    bes4 \times 4/5 { a8 [ bes16
        \once \override NoteHead #'extra-offset = #'(-0.45 . 0)
        \once \override Stem #'extra-offset = #'(-0.45 . 0)
        a bes ] }
    g2 ~
    g8 g bes[ es]
    es[ d] d4 ~
    d4 bes8[ g'] 
    g2~ 
    g4. f8 
  }
\alternative { 
    { 
      f2 ~
      f2 ~
      f2
      R2 
    }
    { 
      f2 ~
      f4 es8[ d] 
      c2~
      c4 d 
      d2 ~ 
      d4. bes8 
      es4 d 
      c4. bes8 
      bes2 
    }
  }
\bar "|."