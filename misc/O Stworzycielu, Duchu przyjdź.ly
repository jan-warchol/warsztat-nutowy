\version "2.16.1"
\header	{
  title = "O Stworzycielu, Duchu, przyjdź"
  subtitle =  \markup \column {
    "Hymn do Ducha Świętego"
    " " " " " "
  }
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
\paper {
  left-margin = 20 \mm
  right-margin = 20 \mm
  top-margin = 20 \mm
}
#(set-global-staff-size 20)

m = #(define-music-function (parser location off) (number?)
       #{
         \once \override Lyrics.LyricText #'X-offset = #off
       #})

%--------------------------------MELODY--------------------------------
melody = \relative c' {
  c4 d4 c4( bes4)
  c4 d4( c4) f4
  g4 f2 \breathe
  % nawiedź...
  f4 c4 d4 f4
  g4( f4) g4 a4  g2 \breathe
  % niebieską...
  f4  g4( a4) f4( e4)
  d4( c4) f4( g4)
  c,4 d4 f2 \breathe
  % sercom...
  e4( f4) d4  c4( bes4) d4 d4(
  e d4) c4 bes4  c2 \breathe
  \bar ":|"
  % amen
  c2(^\markup { \italic zakończenie } d4 c4)
  bes2( c2)
  \bar"|."
}
text =  \lyricmode {
  \set stanza = "1. "
  O Stwo -- rzy -- cie -- lu, Du -- chu, \m #-1.5 przyjdź,
  na -- wiedź dusz wier -- nych To -- bie \m #-1.5 krąg,
  nie -- bie -- ską ła -- skę ze -- słać \m #-1 racz
  ser -- com, co dzie -- łem są \m #-2 Twych \m #-0.5 rąk.
  A -- men.
}
stanzas = \markup {
  \vspace #3
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
        \vspace #1
        \line {
          "3. "
          \column {
            "Ty darzysz łaską siedmiokroć,"
            "Bo moc z prawicy Ojca masz,"
            "Przez Ojca obiecany nam,"
            "Mową wzbogacasz język nasz."
          }
        }
        \vspace #1
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
        \vspace #1
        \line {
          "6. "
          \column {
            "Daj nam przez Ciebie Ojca znać,"
            "Daj, by i Syn poznany był,"
            "I Ciebie, jedno Tchnienie Dwóch,"
            "Niech wyznajemy z wszystkich sił."
          }
        }
        \vspace #1
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
    \context {
      \Score
      timing = ##f
      barAlways = ##t
      defaultBarType = ""
    }
    \context {
      \Staff \remove "Time_signature_engraver"
    }
  }
  \midi { }
}

\stanzas
