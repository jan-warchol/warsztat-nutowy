\version "2.17.10"

tenI = \relative f {
  \set Staff.midiInstrument = "clarinet"
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  % podaj tonację, na przykład \key g \minor
  \key c \major
  % podaj metrum, na przykład \time 4/4
  \time 2/2
  % wpisz nuty:
  \tempo "Nicht schnell"
  r2 c'\p
  c c
  r c4\< c
  f4. f8\! f2
  d2\mf ( c4) c
  b4.( a8 g4) g4\dim
  a2 \voiceOne c2\p
  c c
  r d4\mf d
  e4. g8 g2
  g4\f(f2 e4~
  e d2 c4~
  c b2 a4~
  a4 g2) f4
  f4\dim ( e8 d e4) e
  g2 r
  R1
}

%{

  \override Dots #'stencil = ##f
  \override NoteHead #'stencil = ##f
  \override NoteHead #'no-ledgers = ##t
  \override Stem #'stencil = ##f
  \override Flag #'stencil = ##f
  \override Beam #'stencil = ##f
  \override Accidental #'stencil = ##f
  \override Rest #'stencil = ##f
  \override TabNoteHead #'stencil = ##f
%}

bum = {
  \hideNotes
  \override Hairpin #'stencil = ##f
  \override DynamicText #'stencil = ##f
  \override DynamicTextSpanner #'stencil = ##f
  \override Slur #'stencil = ##f
}


tenII = \relative f {
  \set Staff.midiInstrument = "clarinet"
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  % podaj tonację, na przykład \key g \minor
  \key c \major
  % podaj metrum, na przykład \time 4/4
  \time 2/2
  % wpisz nuty:
  \tempo "Nicht schnell"
  \bum
  r2 c'\p
  c c
  r c4\< c
  f4. f8\! f2
  d2\mf ( c4) c
  b4.( a8 g4) g4\dim
  a2 \undo \bum \voiceTwo a2\p
  a a
  r a4\mf a
  c4. e8 e2
  <<
    {
      a,4\f(f' g, e'
      a, d g, c~
      c b2 a4~
      a4 g2)
      f4
      f4\dim ( e8 d e4) e
      g2 r
    }
    \new Lyrics \with { alignAboveContext = #"ook" }
    \lyricmode { la lal al la la l }
  >>
}



\new Staff = "ook" \with { \consists "Ambitus_engraver" } {
  <<
    \tenI
    \new Voice \tenII
  >>
}
\addlyrics {
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
}