\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Krakowiacy i górale"
  subtitle = "Aria Bardosa z chórem"
  poet = "słowa: Wojciech Bogusławski"
  composer = "muzyka: Jan Stefani"
}
commonprops = {
  \autoBeamOff
  \time 4/4
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
}
scoretempomarker = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
}
#(set-global-staff-size 16.5)
\paper {
  page-count = #1
  system-count = #6
}
%--------------------------------MELODY--------------------------------
solo =	\relative c' {
  \key f \major
  \compressFullBarRests
  \set Score.markFormatter = #format-mark-circle-numbers
  R1*4 r2\fermata
  a4^\mf c | \mark \default f, f a8([ g]) f([ g]) | a4 f
  bes a |	g g g8([ a]) g[( f)] | e4 c
  % nie ma zysku...
  a' c | f, f a8([ g]) f([ g]) | a4 f
  bes a | d c c8[( bes]) a([ g]) | f4 f r2 |
  % Bóg nas...
  r2 c'4 c | \mark \default c8([ bes]) a[( g)] f4. es8 | es[( d]) d4
  bes'4. a8 | a[( g]) fis[( g]) g([ d']) bes[( g]) | f[( e]) d[( c]) \breathe
  % tego zawsze...
  a'4 c | f,4. f8 a8([ g]) f[( g]) | a4 a
  bes a | d c c8[( bes]) a([ g]) | gis[( a]) a4
  bes a | d c c8[( bes]) a([ g]) | f4 f
  r2 r1 \bar "||" \break
  \key bes \major R1*22
}
highvoices = \relative c'' {
  R1*25
  \key bes \major r2
  % żyjmy w zgodzie...
  bes8[(^\mp ^\< f]) f[( d']) | \mark \default d4.\! bes8 c([ bes]) c[( a]) | bes4^\> bes\!
  bes8[(^\< f]) f[( d']) | d4.\! bes8 c([ bes]) c[( a]) | bes4^\> bes\!
  % nie ma zysku...
  c^\markup \italic cresc. d | c d es d | c c
  c d | c d es d | c c
  % żyjmy w zgodzie...
  bes8[( f]) f[( d']) | \mark \default d4. bes8 c([ bes]) c[( a]) | bes4 bes
  bes8[( f]) f[( d']) | d4. bes8 c[( bes]) c[( a)] | bes4 bes
  % nie ma zysku...
  es^\f d | c d es? d | c d
  es?^\< es | d4.^\ff f8 f[( es]) d([ c)] | bes4 bes
  % nie ma zysku...
  es d | \mark \default c d es? d | c d
  es? es | d4.^\> f8\! f[( es]) d([ c)] | bes4^\p bes
  r2 R1 \bar "|."
}
alto = \relative f' {
  R1*25
  \key bes \major r2
  % żyjmy...
  d4^\mp^\< d8([ f]) | f4.\! d8 es[( d)] es[( c]) | d4^\> d\!
  d4^\< d8([ f])\! | f4. d8 es[( d)] es[( c]) | d4^\> d\!
  % nie ma...
  f^\markup \italic cresc. f | f f f f | f f
  f f | f f f f | f f
  % żyjmy...
  d4 d8([ f]) | f4. d8 es[( d)] es[( c]) | d4 d
  d4 d8([ f]) | f4. d8 es[( d)] es[( c]) | d4 d
  % nie ma...
  bes'^\f bes | bes bes bes bes |	bes bes
  bes^\< c |	bes4.^\ff d8 d[( c)] bes[( a]) | bes4 bes
  % nie ma...
  bes bes | bes bes bes bes |	bes bes
  bes c |	bes4.^\> d8\! d[( c)] bes[( a]) | bes4^\p bes
  r2 R1 \bar "|."
}
bass = {
  % NOT RELATIVE!
  R1*25
  \key bes \major r2
  % żyjmy...
  bes,4^\mp^\< bes, | <bes, bes>4.\! <bes, bes>8 f4 f | <bes, f>^\> <bes, f>\!
  bes,4^\< bes,\! | <bes, bes>4. <bes, bes>8 f4 f | <bes, f>^\> <bes, f>\!
  % nie ma...
  a^\markup \italic cresc. bes | a bes c' bes | a a
  a bes | a bes c' bes | a a
  % żyjmy...
  bes,4 bes, | <bes, bes>4. <bes, bes>8 f4 f | <bes, f> <bes, f>
  bes,4 bes, | <bes, bes>4. <bes, bes>8 f4 f | <bes, f> <bes, f>
  % nie ma... 
  g^\f f | e f g f | e f
  g^\< a | bes^\ff bes, f f | bes bes
  % nie ma...
  g f | e f g f | e f
  g a | bes^\> bes,\! f f | bes^\p bes
  r2 R1 \bar "|."
}
%--------------------------------LYRICS--------------------------------
sololyrics =  \lyricmode {
  Żyj -- cie w_zgo -- dzie i po -- ko -- ju, nie daj -- cie się gor -- szyć świa -- tu,
  nie ma zy -- sku w_ta -- kim bo -- ju, któ -- ry czy -- ni krzyw -- dę bra -- tu.
  Bóg nas wszy -- stkich ró -- wno stwa -- rza, ró -- wno nam się ko -- chać ka -- że,
  te -- go za -- wsze u -- po -- ka -- rza, kto bli -- źnie -- go krwią się ma -- że,
  kto bli -- źnie -- go krwią się ma -- że.
}
choruslyrics =  \lyricmode {
  Żyj -- my w_zgo -- dzie i po -- ko -- ju, nie daj -- my się gor -- szyć świa -- tu,
  nie ma zy -- sku w_ta -- kim bo -- ju, któ -- ry czy -- ni krzyw -- dę bra -- tu.
  Żyj -- my w_zgo -- dzie i po -- ko -- ju, nie daj -- my się gor -- szyć świa -- tu,
  nie ma zy -- sku w_ta -- kim bo -- ju, któ -- ry czy -- ni krzyw -- dę bra -- tu,
  nie ma zy -- sku w_ta -- kim bo -- ju, któ -- ry czy -- ni krzyw -- dę bra -- tu.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
    \new Staff = Bardos {
      \clef "treble_8"
      \set Staff.instrumentName = "Bardos "
      \set Staff.shortInstrumentName = "Ba. "
      \new Voice = Bardos {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \solo
      }
    }
    \new Lyrics = bardoslyrics \lyricsto Bardos \sololyrics

    \new ChoirStaff
    <<
      \scoretempomarker
      \new Staff = soprano {
        \clef treble
        \set Staff.shortInstrumentName = \markup { \column { "S " "T " } }
        \new Voice = soprano {
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \highvoices
        }
      }
      \new Lyrics = highvoiceslyrics \lyricsto soprano \choruslyrics

      \new Staff = alto {
        \clef treble
        \set Staff.shortInstrumentName = "A "
        \new Voice = alto {
          \commonprops
          \set Voice.midiInstrument = "english horn"
          \alto
        }
      }
      \new Lyrics = lowvoiceslyrics \lyricsto alto \choruslyrics

      \new Staff = bass {
        \clef bass
        \set Staff.shortInstrumentName = "B "
        \new Voice = bass {
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \bass
        }
      }
    >>
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  <<
    \new Staff = Bardos {
      \set Staff.midiInstrument = "clarinet"
      \solo
    }
    \new ChoirStaff
    <<
      \scoretempomarker
      \new Staff = soprano {
        \set Staff.midiInstrument = "clarinet"
        \highvoices
      }
      \new Staff = alto {
        \set Staff.midiInstrument = "english horn"
        \alto
      }
      \new Staff = tenor {
        \set Staff.midiInstrument = "english horn"
        \transpose c' c { \highvoices }
      }
      \new Staff = bass {
        \set Staff.midiInstrument = "clarinet"
        \bass
      }
    >>
  >>
  \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \mainstructure
  \layout {
    \context {
      \Staff \consists "Ambitus_engraver"
    }
    \context {
      \RemoveEmptyStaffContext
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}