\version "2.17.3"
#(set-global-staff-size 18)

\header	{
  title = \markup \column {
    \line { Gloria Patri \italic orientalis }
    " " " " 
  }
  dedication = \markup \italic { (ks. Grzegorzowi Mączce) }
  composer = "muzyka: Jakub Tomalak"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  #(define fonts
    (make-pango-font-tree "antpolt"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
  left-margin = 21 \mm
  right-margin = 20 \mm
  top-markup-spacing #'basic-distance = 10
  markup-system-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 15
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative f' {
  \key e \minor
  e8 fis g4 g2 \breathe
  fis8 g a4 a2 \breathe
  g8 a b4 a8 g fis4 e4 \breathe
  \bar "||"
  fis\breve e8 fis g4 a4 \breathe
  b8 b b b a g fis2 e
  \bar "|."
}
altomelody = \relative f' {
  \key e \minor
  e8 e e4 e2 \breathe
  e8 e e4 e2 \breathe
  e8 e e4 e8 e dis4 e4 \breathe
  \bar "||"
  dis\breve cis8 dis e4 fis4 \breathe
  fis8 fis fis fis fis e8 dis2 e
  \bar "|."
}
tenormelody = \relative f {
  \key e \minor
  g8 a8 b4 b2 \breathe
  a8 b c4 c2 \breathe
  b8 c b4 a8 g fis4 e4 \breathe
  \bar "||"
  fis\breve e8 fis g4 a4 \breathe
  b8 b b b b b b2 g2
  \bar "|."
}
bassmelody = \relative f {
  \key e \minor
  e8 fis g4 g2 \breathe
  fis8 g a4 a2 \breathe
  g8 a g4 fis8 e dis4 e4 \breathe
  \bar "||"
  dis\breve cis8 dis e4 d4 \breathe
  dis8 dis dis dis dis dis dis2 e2
  \bar "|."
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Chwa -- ła Oj -- cu i Sy -- no -- wi,
  i Du -- cho -- wi Świę -- te -- mu,
  \once \override LyricHyphen #'minimum-distance = #1.5
  \tweak #'X-offset #-0.6
  "jak była na początku, te" --
  raz i za -- wsze,
  i na wie -- ki wie -- ków.
  A -- MEN.
}

stanzas = {}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
    }
    \lyricsto soprano \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    \accidentalStyle neo-modern
    indent = 0\cm
    \override NoteHead #'style = #'altdefault
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
  \midi {
    \context {
      \Staff
      \set midiInstrument = #"clarinet"
  }
}

\stanzas