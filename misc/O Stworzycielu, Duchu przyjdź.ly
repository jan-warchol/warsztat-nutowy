\version "2.16.1"
\header	{
  title = "O Stworzycielu, Duchu, przyjdź"
  subtitle =  \markup \column {
    "Hymn do Ducha Świętego"
    " " " " " "
  }
  composer = "Hraban Maur, IX wiek"
  poet = "tłumaczenie: Adam Mickiewicz"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}
commonprops = {
  \autoBeamOff
  \key g \major
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
  d4 e4 d4( c4)
  d4 e4( d4) g4
  a4 g2 \breathe
  % nawiedź...
  g4 d4 e4 g4
  a4( \noBreak g4) a4 b4  a2 \breathe
  % niebieską...
  g4  a4( b4) g4( fis4)
  e4( d4) g4( a4)
  d,4 e4 g2 \breathe
  % sercom...
  fis4( \noBreak g4) e4  d4( \noBreak c4) e4 e4(
  fis e4) d4 c4  d2 \breathe
  \bar ":|"
  % amen
  d2(^\markup { \italic zakończenie } e4 d4)
  c2( d2)
  \bar"|."
}
text =  \lyricmode {
  \set stanza = "1. "
  O Stwo -- rzy -- cie -- lu, Du -- chu, \m #-1.5 przyjdź,
  na -- wiedź dusz wier -- nych To -- \noBreak bie \m #-1.5 krąg,
  nie -- bie -- ską ła -- skę ze -- słać \m #-1 racz
  ser -- \noBreak com, co dzie -- łem są \m #-2 Twych \m #-0.5 rąk.
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
            \line { \concat { Pocie \underline szy cielem } jesteś zwan }
            \line { I \concat { najwyższe \underline go } Boga dar. }
            \line { Tyś \underline namaszczeniem naszych dusz }
            \line { \underline Zdrój \concat { ży \underline wy, } \concat { mi \underline łość, } ognia żar. }
          }
        }
        \vspace #1
        \line {
          "3. "
          \column {
            \line { Ty \concat { da \underline rzysz } \concat { łas \underline ką } siedmiokroć, }
            \line { Bo moc z \concat { prawi \underline cy } Ojca masz, }
            \line { Przez \underline Ojca \concat { \underline obie cany } nam, }
            \line { \concat { \underline Mo wą } \concat { \underline wzbo ga \underline casz } język nasz. }
          }
        }
        \vspace #1
        \line {
          "4. "
          \column {
            \line { Światłem \concat { \underline roz jaś \underline nij } naszą myśl, }
            \line { W serca nam \concat { mi \underline łość } świętą wlej, }
            \line { I \underline wątłą \underline słabość naszych ciał, }
            \line { \concat { \underline Po krzep } \concat { \underline sta ło \underline ścią } mocy swej. }
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "5. "
          \column	{
            \line { \concat { Nieprzy \underline ja cie \underline la } odpędź w dal }
            \line { I twym \concat { poko \underline jem } obdarz wraz. }
            \line { Niech w \underline drodze \underline za \concat { \underline prze wodem } Twym, }
            \line { \concat { \underline Mi nie \underline my } zło, \underline co kusi nas. }
          }
        }
        \vspace #1
        \line {
          "6. "
          \column {
            \line { Daj nam \underline przez \concat { Cie \underline bie } Ojca znać, }
            \line { Daj, by i Syn \concat { \underline po znany } był, }
            \line { I \underline Ciebie, \underline jedno Tchnienie Dwóch, }
            \line { \underline Niech \concat { wy \underline zna je \underline my } z wszystkich sił. }
          }
        }
        \vspace #1
        \line {
          "7. "
          \column {
            \line { Niech \concat { Bo \underline gu } \concat { Oj \underline cu } chwała brzmi, }
            \line { Synowi, \concat { któ \underline ry } zmartwychwstał, }
            \line { I \underline Temu, \underline co \concat { \underline po ciesza } nas, }
            \line { \underline Niech hołd \concat { \underline wie czy \underline stych } płynie chwał. }
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
