\version "2.10.33"
\paper
{
  system-count = #3
}
#(set-global-staff-size 19)		% default staff size is 20
\header
{
  title = "O siano, siano"
  arranger = "aranżacja: Anna Szymanek"
}
staffprops =
{
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \time 3/4
  \override Score.MetronomeMark #'extra-offset = #'( -7.0 . 2.4 )
  \override Score.MetronomeMark #'transparent = ##t
  \tempo 4=80
}
%--------------------------------MELODY--------------------------------
sopranomelody =
{
  a'4 a' bes' |
  d''8([ c'']) c''2 |
  c''4 \melisma d''2 |
  d''4 c''2 \melismaEnd
  %-=5=-
  a'4 a' bes' |
  d''8([ c'']) c''2 |
  c''4 \melisma d''2 |
  d''4 c''2 \melismaEnd
  c''4 bes'4. g'8 |
  %-=10=-
  bes'4 a'2 |
  bes'8 bes' bes'4 d'' |
  d''4 c''2 |
  f'8[( g']) a'4 bes' |
  d''4 c''2 |
  %-=15=-
  c''8 c'' bes'4. g'8 |
  bes'4 a'2 |
  c''4 bes'4. g'8 |
  bes'4 a'2 |
  bes'8 bes' bes'4 d''
  %-=20=-
  d''4 c''2 |
  f'8[( g']) a'4 bes' |
  d''4 c''2 |
  d''8 c'' bes'4. e'8 |
  g'4 f'2	\bar "|."
}
altomelody =
{
  e'4 e' d' |
  f'8([ e']) e'2 |
  g'4 f'2 |
  d'4 f'2 |
  %-=5=-
  e'4 e' d' |
  f'8([ e']) e'2 |
  e'4 f'2 |
  g'4 f'2 |
  e'4 e' c'8[( g']) |
  %-=10=-
  g'4 f'2 |
  d'8 d' f'4 d' |
  d'4 e'2 |
  d'8[( c']) f'4 d' |
  g'4 g'2 |
  %-=15=-
  e'8 e' d'4 e'8[( g']) |
  g'4 f'2 |
  a'4 bes' g'8[( e']) |
  d'4 f'2 |
  d'8 d' e'4 g' |
  %-=20=-
  f'4 c'2 |
  c'8[( bes]) c'4 f' |
  a'4 g'2 |
  d'8 e' f'4 f'8[( e']) |
  e'4 f'2	\bar "|."
}
tenormelody =
{
  R1*3/4
  R1*3/4
  c'8 c' bes4. g8 |
  bes4 a2 |
  %-=5=-
  c'2 \melisma bes4~ |
  bes8[ g] g2 \melismaEnd
  c'8 c' bes4. g8 |
  bes4 a2 |
  a4 g4. bes8 |
  %-=10=-
  bes4 c'2 |
  d'8 d' bes4 g |
  bes4 a2 |
  a8[( g]) a4 f |
  bes4 c'2 |
  %-=15=-
  a8 a g4. bes8 |
  bes4 f2 |
  f4 d'4. bes8 |
  d'4 d'2 |
  bes8 g g4 bes |
  %-=20=-
  a4 g2 |
  f8[( d])f4 d |
  d4 e2 |
  f8 a d'4. bes8 |
  bes4 c'2 \bar"|."
}
bassmelody =
{
  R1*3/4
  R1*3/4
  e8 e d4 d |
  g4 f2 |
  %-=5=-
  f2 e4 |
  f8[ g] e2 |
  g8 f d4 g |
  g4 f2 |
  e4 g e |
  %-=10=-
  g4 f( d) |
  bes,8 bes, d4 bes, |
  bes,4 a,2 |
  bes,8[( c]) f4 bes, |
  d4 e2 |
  %-=15=-
  f8 c d4 bes,8[( d]) |
  d4 c2 |
  f4 f g8[( e]) |
  f4 d( f) |
  bes,8 bes, g,4 d |
  %-=20=-
  d4 e2 |
  f4 c d |
  d4 c2 |
  d8 c bes,4 d8[( e]) |
  g4 f2 \bar"|."
}
%--------------------------------LYRICS--------------------------------
femalelyrics =  \lyricmode
{
  \set stanza = "1. "
  Ślicz -- na Pa -- nien -- ka a __ w_staj -- ni po -- wi -- wszy a __
  O sia -- no, sia -- no, sia -- no jak li -- li -- ja, na któ -- rym kła -- dzie Je -- zu -- sa Ma -- ry -- ja.
  O sia -- no, sia -- no, sia -- no jak li -- li -- ja, na któ -- rym kła -- dzie Je -- zu -- sa Ma -- ry -- ja.
}
malelyrics = \lyricmode
{
  \set stanza = "1."
  Je -- zu -- sa zro -- dzi -- ła, a __ sian -- kiem Go o -- kry -- ła.
  O sia -- no, sia -- no, sia -- no jak li -- li -- ja, na któ -- rym kła -- dzie Je -- zu -- sa Ma -- ry -- ja.
  O sia -- no, sia -- no, sia -- no jak li -- li -- ja, na któ -- rym kła -- dzie Je -- zu -- sa Ma -- ry -- ja.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------
everything =
{
  \new ChoirStaff
  <<
    \new Staff = soprano
    {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano
      {
        \staffprops
        \sopranomelody
      }
    }
    \new Lyrics = soprano \lyricsto soprano \femalelyrics
    \new Staff = alto
    {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto
      {
        \staffprops
        \altomelody
      }
    }
    \new Lyrics = soprano \lyricsto soprano \femalelyrics
    \new Staff = tenor
    {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor
      {
        \staffprops
        \tenormelody
      }
    }
    \new Lyrics = tenor \lyricsto tenor \malelyrics
    \new Staff = bass
    {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass
      {
        \staffprops
        \bassmelody
      }
    }
    \new Lyrics = tenor \lyricsto tenor \malelyrics
  >>
}
%--------------------------------SCORE-LAYOUT--------------------------------
\score
{
  \everything
  \layout
  {
    \context
    {
      \Lyrics
      \override LyricSpace #'minimum-distance = #0.8
    }
    indent = 0\cm
  }
}
%--------------------------------SCORE-MIDI--------------------------------
\score
{
  \unfoldRepeats
  {
    \everything
  }
  \midi
  {
    \context
    {
      \Score
    }
  }
}
