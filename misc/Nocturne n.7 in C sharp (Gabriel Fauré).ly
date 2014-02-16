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

mvdots = \override Dots.extra-offset = #'(-0.28 . 0)
mvnote =
#(define-music-function (parser location offset)(number?)
   #{ \once \override NoteColumn.force-hshift = #offset #})

mvnI = \mvnote #2.13
mvnII = \mvnote #2.0
mvnIII = \mvnote #1.7

RHone = \relative f {
  \global
  \mvdots d'4. es e f gis8( a4 bes8 b4) |
  bis2.( cis) dis8( e4 bis8 cis4) |
  bis2.( cis) \mvnIII dis8( e4 bis!8 cis4)
  |
  \undo \mvdots b'4.->
  \times 3/2 { e,8 b~ }
  \times 3/2 { b gis }
  \times 3/2 { g f }
  e4.~
  \times 3/2 { e8 dis }
}

RHtwo = \relative f {
  \global
  \mvnI
  <as' c>8 <g bes>4
  \mvnII
  <fis a>8 g4
  \mvnI
  <bes d>8 <a c>4
  \mvnII
  <gis b>8 a4 s2.
  |
  \mvnI
  a'8 gis4 fisis8 gis4
  \mvnIII
  fis8 e4 dis8 e4 a4. e |
  \mvnI
  a8 gis4 fisis8 gis4
  \mvnIII
  fis8 e4 dis8 e4 <ais cis>4. fisis |
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