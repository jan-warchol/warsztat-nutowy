\version "2.12.3"
\header	{
  title = "O Stworzycielu, Duchu, przyjdź"
  subtitle = "Hymn do Ducha Świętego"
  composer = "Hraban Maur, IX wiek"
  poet = "tłumaczenie: Adam Mickiewicz"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo 4=130
}
#(set-global-staff-size 22)
%--------------------------------MELODY--------------------------------
melody = \relative c' {
  c4 d4 c4( bes4) |
  c4 d4( c4) f4 |
  g4
  \once \override Voice.NoteHead #'extra-offset = #'( -2.5 . 0.0 )
  \once \override Voice.Stem #'extra-offset = #'( -2.5 . 0.0 )
  f2
  \once \override Voice.Rest #'extra-offset = #'( -1.0 . 0.0 )
  r4 |
  % nawiedź...
  f4 c4
  \once \override Voice.NoteHead #'extra-offset = #'( -1.0 . 0.0 )
  \once \override Voice.Stem #'extra-offset = #'( -1.0 . 0.0 )
  d4
  \once \override Voice.NoteHead #'extra-offset = #'( -1.0 . 0.0 )
  \once \override Voice.Stem #'extra-offset = #'( -1.0 . 0.0 )
  f4 |
  \break
  g4( f4) g4 a4 | g2 r4
  % niebieską...
  f4 | g4( a4) f4( e4) |
  d4( c4) f4( g4) |
  c,4 d4
  \once \override Voice.NoteHead #'extra-offset = #'( -1.0 . 0.0 )
  \once \override Voice.Stem #'extra-offset = #'( -1.0 . 0.0 )
  f2 |
  % sercom...
  r4 e4( f4) d4 | c4( bes4) d4 d4( |
  e d4) c4 bes4 | c2 r2
  \bar ":|"
  % amen
  c2(^\markup { \italic zakończenie } d4 c4) |
  bes2( c2)
  \bar"|."
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  O Stwo -- rzy -- cie -- lu, Du -- chu, przyjdź,
  na -- wiedź dusz wier -- nych To -- bie krąg,
  nie -- bie -- ską ła -- skę ze -- słać racz
  ser -- com, co dzie -- łem są Twych rąk.
  A -- men.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Pocieszycielem jesteś zwan"
            "I najwyższego Boga dar."
            "Tyś namaszczeniem naszych dusz"
            "Zdrój żywy, miłość, ognia żar."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Ty darzysz łaską siedmiokroć,"
            "Bo moc z prawicy Ojca masz,"
            "Przez Ojca obiecany nam,"
            "Mową wzbogacasz język nasz."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Światłem rozjaśnij naszą myśl,"
            "W serca nam miłość świętą wlej,"
            "I wątłą słabość naszych ciał,"
            "Pokrzep stałością mocy swej."
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "5. "
          \column	{
            "Nieprzyjaciela odpędź w dal"
            "I twym pokojem obdarz wraz."
            "Niech w drodze za przewodem Twym,"
            "Miniemy zło, co kusi nas."
          }
        }
        \hspace #0.1
        \line {
          "6. "
          \column {
            "Daj nam przez Ciebie Ojca znać,"
            "Daj, by i Syn poznany był,"
            "I Ciebie, jedno Tchnienie Dwóch,"
            "Niech wyznajemy z wszystkich sił."
          }
        }
        \hspace #0.1
        \line {
          "7. "
          \column {
            "Niech Bogu Ojcu chwała brzmi,"
            "Synowi, który zmartwychwstał,"
            "I Temu, co pociesza nas,"
            "Niech hołd wieczystych płynie chwał."
          }
        }
      }
      \hspace #0.1
    }
  }
}

\score {
  \new Staff {
    \commonprops
    \set Voice.midiInstrument = "clarinet"
    \melody
  }
  \addlyrics \text
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
  \midi { }
}

\stanzas
