#(set-global-staff-size 16)
\paper {
  paper-width = 10 \cm
  paper-height = 7.5 \cm
  indent = 0
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
}

\markup "klucz wiolinowy (klucz G)"
\new Staff \with { \remove Time_signature_engraver } {
  \clef G s8
}

\markup "klucz basowy (klucz F)"
\new Staff \with { \remove Time_signature_engraver } {
  \clef F s8
}

\markup "klucz C"
\new Staff \with { \remove Time_signature_engraver } {
  \clef C s8
}

\markup "klucz używany przez tenory"
\new Staff \with { \remove Time_signature_engraver } {
  \clef "G_8" s8
}

\pageBreak


\markup "wartości rytmiczne nut"

\new Staff \with { \remove Time_signature_engraver } {
  a'\longa a'\breve a'1
}
\new Staff \with { \remove Time_signature_engraver } {
  a'2
}
\new Staff \with { \remove Time_signature_engraver } {
  a'4
}
\new Staff \with { \remove Time_signature_engraver } {
  a'8
}
\new Staff \with { \remove Time_signature_engraver } {
  a'16
}

\pageBreak


\markup "pauzy"

\new Staff \with { \remove Time_signature_engraver } {
  r1
}
\new Staff \with { \remove Time_signature_engraver } {
  r2
}
\new Staff \with { \remove Time_signature_engraver } {
  r4
}
\new Staff \with { \remove Time_signature_engraver } {
  r8
}
\new Staff \with { \remove Time_signature_engraver } {
  r16
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  \autoBeamOff
  a1 \break
  a2 a \break
  a4 a a a \break
  a8 a a a a a a a \break
  a16 a a a a a a a a a a a a a a a
}

\pageBreak

\markup "nuty z kropką"
\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  a4.
}

\pageBreak

\markup "nazwy dźwięków"
\new Staff \with { \remove Time_signature_engraver } \relative c' {
  \autoBeamOff
  a4 b c d e f g a b c d e f g a
}
\addlyrics { a b c' d' e' f_' g' a' b' c'' d'' e'' f_'' g'' a'' }

\new Staff \with { \remove Time_signature_engraver } \relative c, {
  \autoBeamOff \clef F
  e4 f g a b c d e f g a b c d e
}
\addlyrics { E F G A B c d e f g a b c' d' e' }

\pageBreak

\new Staff \with { \remove Clef_engraver \remove Time_signature_engraver } {
  \autoBeamOff
  a b' g' b \noBreak e'' c' a' c'' \noBreak d'' f' d' a'' \noBreak e' g'' f''
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } {
  \autoBeamOff
  a b' g' b e'' c' a' c'' d'' f' d' a'' e' g'' f''
}

\new Staff \with { \remove Time_signature_engraver } \transpose c' g, {
  \autoBeamOff \clef F
  a bes' g' d'' g'' f'' bes e'' f' d' a'' e' c' a' c''
}

\new Staff \with { \remove Time_signature_engraver } \transpose c' c {
  \autoBeamOff \clef "G_8"
  a c'' d'' f' d' c' a' e' a'' b' g' b e'' g'' f''
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  gis es fisis ases
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  gis gis gis gis g g g g
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  gis gis gis gis g? g g g
}

\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  gis gis gis gis
  \override Staff.Accidental #'font-size = #-2
  g! g g g
}

\pageBreak

\new Staff \with { \remove Time_signature_engraver } \transpose c' e, {
  \autoBeamOff \clef F \key c \major
  bes' g' dis'' g'' f'' es' e'' f' des' a'' e' ces' a' c''
}

\pageBreak
