\version "2.17.2"
#(set-global-staff-size 17)

\paper {
  indent = 0
  ragged-right = ##f
  left-margin = 15 \mm
  right-margin = 15 \mm
  page-count = 1
}
\markup \vspace #4
\markup "OŁTARZ I"
\markup ""

\transpose c' a \relative f' {
  \override NoteHead #'style = #'altdefault
  \key g \minor
  \time 4/4
  g8 g fis4 g2
  g8 g fis4 g2
  \time 3/4
  bes8 bes bes4 a8 g8
  a4 a2
  \time 4/4
  a4 a bes8\melisma a8\melismaEnd g4
  \time 3/4
  fis4 g2
  \bar "||"
}
\addlyrics {
  \set stanza = "1."
  Świę -- ty Bo -- że, Świę -- ty moc -- ny,
  Świę -- ty a nie -- śmier -- tel -- ny,
  zmi -- łuj się nad na -- mi.
}

\markup "OŁTARZ II"
\markup ""
\transpose c' a \relative f' {
  \override NoteHead #'style = #'altdefault
  \set Voice.midiInstrument = "clarinet"
  \key g \minor
  \cadenzaOn
  g8 a bes\breve bes4 a8 g a4 a2
  \breathe
  a4 bes8 [ \melisma a ] \melismaEnd g4 fis g2
  \cadenzaOff
  \bar "||"
}
\addlyrics {
  \set stanza = "2."
  Od po --
  \once \override LyricText #'X-offset = #-0.5
  "wietrza, głodu," og -- nia i woj -- ny
  wy -- baw nas, Pa -- nie!
}

\markup "OŁTARZ III"
\markup ""
\transpose c' a \relative f' {
  \override NoteHead #'style = #'altdefault
  \set Voice.midiInstrument = "clarinet"
  \key g \minor
  \cadenzaOn
  g8[ a] bes\breve a8 g a4 a2
  \breathe
  a8 a bes8 [ \melisma a ] \melismaEnd g4 fis g2
  \cadenzaOff
  \bar "||"
}
\addlyrics {
  \set stanza = "3."
  Od
  \once \override LyricText #'X-offset = #-0.5
  "nagłej a niespodzie"  -- wa -- nej śmier -- ci,
  za -- cho -- waj nas, Pa -- nie!
}

\markup "OŁTARZ IV"
\markup ""
\transpose c' a \relative f' {
  \override NoteHead #'style = #'altdefault
  \set Voice.midiInstrument = "clarinet"
  \key g \minor
  \cadenzaOn
  g8[ a] bes\breve bes4 a8 g a4 a2
  \breathe
  a8 a bes8 [ \melisma a ] \melismaEnd g4 fis g2
  \cadenzaOff
  \bar "||"
}
\addlyrics {
  \set stanza = "4."
  My
  \once \override LyricText #'X-offset = #-0.5
  "grzeszni Ciebie," Bo -- ga, pro -- si -- my,
  wy -- słu -- chaj nas, Pa -- nie!
}
