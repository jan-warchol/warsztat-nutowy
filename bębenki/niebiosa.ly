\version "2.17.3"
#(set-global-staff-size 18)

\include "predefined-guitar-fretboards.ly"

\header	{
  title = "Niebiosa, deszcz z góry spuśćcie"
}

\paper {
  %system-count = #3
  ragged-last-bottom = ##t
  top-markup-spacing #'basic-distance = #4
  markup-system-spacing #'basic-distance = #11
  system-system-spacing #'basic-distance = #14
  score-system-spacing #'basic-distance = #22
  last-bottom-spacing #'basic-distance = #8
}

uparrow = \markup {
  \postscript #"
  0.1     setlinewidth
  0.5 0   moveto
  0.5 2   lineto
  0.2 1.4 lineto
  0.5 2   moveto
  0.8 1.4 lineto
  stroke
"
}

downarrow = \markup {
  \postscript #"
  0.1     setlinewidth
  0.5 2   moveto
  0.5 0   lineto
  0.2 0.6 lineto
  0.5 0   moveto
  0.8 0.6 lineto
  stroke
"
}


%--------------------------------MELODY--------------------------------

akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  \key a \minor
  \time 12/8
  a1.:m a:m f g a:m e a4.:m e2.:7 a1.:m
}

melody = \relative f' {
  \key a \minor
  \time 12/8
  \tempo Szybko 4. = 90
  r4. r4. r4. r8 r a8 |
  c4. a4. ~ a4. a8 b8 a8 |
  c4. c4. ~ c4. r8 r c8 |
  d4. b4. r8 r b8 b8 a8 g8 |
  a4. a4. r4. r8 r a8 |
  a4. e4. r4. e8 fis8 gis8 |
  \time 9/8
  a4 a8 b8 b8 b8  c8 c8 b8 |
  a2. r4. |
  \bar "||"
}

text =  \lyricmode {
  \set stanza = \markup \italic ref.
  Nie -- bio -- sa,
  \tweak #'self-alignment-X #0.6 \markup { \scale #'(0.9 . 1) deszcz } z_gó -- ry spuść -- cie,
  o chmu -- ry,
  Świę -- te -- go ze -- ślij -- cie!
  O zie -- mio,
  o -- twórz się \break zie -- mio i Zba -- wi -- cie -- la nam daj!
}

%----------------------------------------------------------------


\score {
  \transpose a fis
  {
    <<
      \new ChordNames { \germanChords \akordy }
      %\new FretBoards { \germanChords \akordy }

      \new RhythmicStaff \with {
        \override VerticalAxisGroup #'default-staff-staff-spacing =
        #'((basic-distance . 4)
           (padding . 4))
      }
      {
        \improvisationOn
        \override TextScript #'Y-offset = #-3.5
        %%{
        \repeat unfold 13 {
          c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
        }
        c4.-\uparrow c2.-\uparrow r4.
        %}
        %{ nie udało mi się doprowadzić tej wersji do rozsądnego spacingu
           \repeat unfold 24 {
           c8-\uparrow c16-\downarrow c16-\uparrow c16-\downarrow c16-\uparrow
           }
        %}
      }
      \new Staff {
        \clef treble
        \new Voice = solovoice {
          \set Voice.midiInstrument = "clarinet"
          \melody
        }
      }
      \new Lyrics = solovoicelyrics \lyricsto solovoice \text
    >>
  }

  \layout {
    indent = 0\cm

    \context {
      \Score proportionalNotationDuration = #(ly:make-moment 1 8)
    }
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}


\score {
  \transpose a fis
  {
    <<
      \new ChordNames { \germanChords \akordy }
      %\new FretBoards { \germanChords \akordy }

      \new RhythmicStaff \with {
        \override VerticalAxisGroup #'default-staff-staff-spacing =
        #'((basic-distance . 4)
           (padding . 4))
      }
      {
        \improvisationOn
        \override TextScript #'Y-offset = #-3.5
        %{
          \repeat unfold 13 {
          c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
          }
          c4.-\uparrow c2.-\uparrow r4.
        %}
        %%{ nie udało mi się doprowadzić tej wersji do rozsądnego spacingu
        \repeat unfold 30 {
          c8-\uparrow c16-\downarrow c16-\uparrow c16-\downarrow c16-\uparrow
        }
        %}
      }
      \new Staff {
        \clef treble
        \new Voice = solovoice {
          \set Voice.midiInstrument = "clarinet"
          \melody
        }
      }
      \new Lyrics = solovoicelyrics \lyricsto solovoice \text
    >>
  }

  \layout {
    indent = 0\cm

    \context {
      \Score proportionalNotationDuration = #(ly:make-moment 1 8)
    }
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}
