\version "2.19.0"

% version edited by Richard Dowling.
% Giuliano Forghieri features this as an example on
% http://www.musicengraving.it/samples.html

\paper {
  indent = 0
  system-count = 2
}

global = {
  \override Staff.TimeSignature #'stencil = ##f
  \time 18/8
  \key e \major
  %\override NoteCollision #'prefer-dotted-right = ##t
  \override Staff.Accidental #'extraNatural = ##f
  \override Staff.AccidentalPlacement #'right-padding = #0
}

mvdots = \once \override Dots.extra-offset = #'(-0.25 . 0)

RHone = \relative f {
  \global
  \mvdots d'4. es e f gis8( a4 bes8 b4) |
  bis2.( cis) dis8( e4 bis8 cis4) |
  bis2.( cis) dis8( e4 bis!8 cis4)
  |
  b'4.->
  \times 3/2 { e,8 b~ }
  \times 3/2 { b gis }
  \times 3/2 { g f }
  e4.~
  \times 3/2 { e8 dis }
}

RHtwo = \relative f {
  \global
  \once \override NoteColumn.force-hshift = #2.2
  <as' c>8 <g bes>4
  \once \override NoteColumn.force-hshift = #2.2
  <fis a>8 g4
  \once \override NoteColumn.force-hshift = #2.2
  <bes d>8 <a c>4
  \once \override NoteColumn.force-hshift = #2.2
  <gis b>8 a4 s2.
  |
  \once \override NoteColumn.force-hshift = #2.2
  a'8 gis4 fisis8 gis4
  \once \override NoteColumn.force-hshift = #2.2
  fis8 e4 dis8 e4 a4. e |
  a8 gis4 fisis8 gis4 fis8 e4 dis8 e4 <ais cis>4. fisis |
  s4. r d b bis gis
}

LHone = \relative f {
  \global
}


\new PianoStaff <<
  \new Staff <<
    \new Voice <<
      \voiceOne
      \RHone
      \transpose c c' \RHone
    >>
    \new Voice {
      \voiceTwo
      \RHtwo
    }
  >>
  \new Staff <<
    \clef F
    \new Voice {
      \voiceOne
      \LHone
    }
    \new Voice {
      \voiceTwo
      
    }
  >>
>>