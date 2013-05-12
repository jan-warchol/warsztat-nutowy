\version "2.17.16"
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
  e4 fis g2 g1 \breathe
  fis4 g a2 a1 \breathe
  g4 a b2 a4 g fis2 e2 \breathe
  \bar "||"
  \once \override NoteHead #'style = #'baroque
  fis\breve e4 fis g2 a2 \breathe
  b4 b b b a g fis1 e
  \bar "|."
}
altomelody = \relative f' {
  \key e \minor
  e4 e e2 e1 \breathe
  e4 e e2 e1 \breathe
  e4 e e2 e4 e dis2
  \once\override NoteColumn #'force-hshift = #1
  e2 \breathe
  \bar "||"
  \once \override NoteHead #'style = #'baroque
  dis\breve cis4 dis e2 fis2 \breathe
  fis4 fis fis fis fis e4 dis1 e
  \bar "|."
}
tenormelody = \relative f {
  \key e \minor
  g4 a4 b2 b1 \breathe
  a4 b c2 c1 \breathe
  b4 c b2 a4 g fis2 e2 \breathe
  \bar "||"
  \once \override NoteHead #'style = #'baroque
  fis\breve e4 fis g2 a2 \breathe
  b4 b b b b b b1 g1
  \bar "|."
}
bassmelody = \relative f {
  \key e \minor
  e4 fis g2 g1 \breathe
  fis4 g a2 a1 \breathe
  g4 a g2 fis4 e dis2
  \once\override NoteColumn #'force-hshift = #1
  e2 \breathe
  \bar "||"
  \once \override NoteHead #'style = #'baroque
  dis\breve cis4 dis e2 d2 \breathe
  dis4 dis dis dis dis dis dis1 e1
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
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #2
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'minimum-distance = #5
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
    \override BreathingSign #'text =
    \markup { \musicglyph #"scripts.rvarcomma" }
    \override NoteHead #'style = #'harmonic-mixed
    \omit Stem

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
      midiInstrument = #"clarinet"
    }
  }
}

\stanzas