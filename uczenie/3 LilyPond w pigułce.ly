\version "2.15.36"

% #(set-global-staff-size 19)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #4
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #3
  markup-markup-spacing #'padding = #2
  ragged-bottom = ##t
}

\header {
  instrument = "LilyPond w pigułce"
  tagline = \markup {
    © Jan Warchoł 2012,
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    { "licencja CC by-nc-sa" }
  }
}

\markup \vspace #1

\relative f { g4^"Nazwy dźwięków w kluczu wiolinowym:" a b c d e f g a b c d e f g a }
\addlyrics { g a b c d e f g a b c d e f g a }

\markup \vspace #0.1
\relative f, { \clef F e4^"Nazwy dźwięków w kluczu basowym:" f g a b c d e f g a b c d e f }
\addlyrics { e f g a b c d e f g a b c d e f }

\markup \vspace #0.1
\markup \typewriter "\relative f'' { c d b e a, f' g, g' c,, }"
\relative f'' { c4 d b e a, f' g, g' c,, }


\markup \typewriter "\relative f' { g1 g2 g4 g8 g16 g r1 r2 r4 r8 r16 r }"
\relative f' { g1 g2 g4 g8 g16 g r1 r2 r4 r8 r16 r }

\markup \typewriter"{ b2. b4~ b4~ b2~ b8 }"
{ b2. b4~ b4~ b2~ b8 }

\markup \typewriter "{ \\time 3/4  R2.*3 }"
{ \time 3/4  R2.*3  }

\markup \typewriter \column {
  \line { "\relative f' {" g2 c8 \bold "\melisma" b a g~ g4 \bold "\melismaEnd"  f8 \bold "\melisma" g16 a c2 \bold "\melismaEnd" "}" }
  "\addlyrics { ko -- cio -- łek __ }"
}
\relative f' {
  g2 c8 \melisma b a g~ g4 \melismaEnd f8 \melisma g16 a c2 \melismaEnd
}
\addlyrics { ko -- cio -- łek __ }

\markup \typewriter "\relative f' { \clef F  c1  \clef \"G_8\"  c  \clef G  c }"
\relative f' { \clef F   c1   \clef "G_8"   c1  \clef G  c1 }

\markup \typewriter "{ \key g \minor  g4 bes d2 }"
\relative f' { \key g \minor  g4 bes d2 }

\markup \typewriter "\relative f' { g4\f a f2\mp a1\p }"
\relative f' { g4\f a f2\mp a1\p }


\pageBreak

%{
  \markup \large \bold "Prosty przykład:"

  \relative f {
  \clef bass
  \time 3/4
  \key d \major
  r8 fis16 \melisma e \melismaEnd fis8 d a'4
  }
  \addlyrics {
  Al -- le -- lu -- ja
  }
%}
\markup \large \bold "Przykład pliku z kilkoma głosami:"

\markup \typewriter \column {
  " "
  "\version \"2.15.36\"  % oznaczam której wersji LilyPonda należy używać do tego pliku"
  " "
  "% zapisuję melodię sopranu do zmiennej, której użyję później:"
  "melodiaSopranu = \relative f' {"
  "  \clef G"
  "  \key g \minor"
  "  g2. bes4"
  "  d1"
  "  d1"
  "}"
  "tekstSopranu = \lyricmode {  % lyricmode oznacza, że to libretto, a nie nuty"
  "  E -- pi -- fa -- nia!"
  "}"
  " "
  "melodiaBasu = \relative f {"
  "  \clef F"
  "  \key g \minor"
  "  d8 d es2\melisma f8 d~"
  "  d1\melismaEnd"
  "  R1"
  "}"
  "tekstBasu = \lyricmode {"
  "  la la pam __"
  "}"
  " "
  "% składam wszystko w całość przywołując zdefiniowane wcześniej zmienne."
  "% Podwójne nawiasy ostre << >> oznaczają, że głosy mają być jednocześnie,"
  "% a nie jeden po drugim:"
  "<<"
  "  \melodiaSopranu"
  "  \addlyrics \\tekstSopranu"
  "  \melodiaBasu"
  "  \addlyrics \\tekstBasu"
  ">>"
  " "
  " "
}

sopranMelodia = \relative f' {
  \clef G
  \key g \minor
  g2. bes4
  d1
  d1
}
sopranTekst = \lyricmode {
  E -- pi -- fa -- nia!
}

basMelodia = \relative f {
  \clef F
  \key g \minor
  d8 d es2\melisma f8 d~
  d1\melismaEnd
  R1
}
basTekst = \lyricmode {
  la la pam __
}

<<
  \sopranMelodia
  \addlyrics \sopranTekst
  \basMelodia
  \addlyrics \basTekst
>>
