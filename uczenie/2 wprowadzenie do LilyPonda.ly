\version "2.17.26"

% #(set-global-staff-size 19)

% #(ly:set-option 'debug-skylines #t)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #2
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #3
  markup-markup-spacing #'padding = #2
  ragged-bottom = ##t
}

\header {
  instrument = "LilyPond Quick-start"
  tagline = \markup {
    © Jan Warchoł 2012,
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    { "license CC by-nc-sa or GNU GPL (if the other one is incomaptible)" }
  }
}

\markup \large \bold "1. How LilyPond works"
\markup \justify {
  You write music as text (imagine sending someone a text message
  with a song melody using a mobile), and from that text LilyPond
  produces a score.
}

\markup \vspace #0.1
\markup \large \bold "Where to obtain LilyPond"
\markup \justify {
  The fastest is to use an online editor: :
  \typewriter \smaller \with-url
  #"http://www.lilybin.com/" "www.lilybin.com"
  – it should suffice for simple tasks.
}
\markup \justify {
  To install LilyPond on your computer, go to
  \with-url #"http://lilypond.org/windows.html"
  {\smaller \typewriter lilypond.org/windows.html },
  download setup file \italic "Windows: LilyPond (…)"
  (approx 25 MB) and install.  You will also need an editor,
  e.g. Frescobaldi – go to
  \with-url #"http://code.google.com/p/lilykde/downloads/list"
  \smaller\typewriter"code.google.com/p/lilykde/downloads/list",
  download the latest version (\italic
  { Frescobaldi Setup (…).exe}, około 15 MB) and install.
}

\markup \vspace #0.1
\markup \large \bold "2. First run"

\markup \justify { Turn Frescobaldi/Lilybin on and type: }
\markup \column \override #'(font-name . "Lucida Console") {
  "\relative f' {"
  "  c c g' g"
  "}"
  "\addlyrics {"
  "  twin -- kle twin -- kle "
  "}"
}
\markup \justify \italic {
  Note that after letter f there's an apostrophe
  (this is \bold not a sign from the key next to the digit 1).
}
\markup \justify {
  Now you tell LilyPond do make a score from that. If you are
  using Frescobaldi, press Ctrl-M, in the case of
  Lilybin Ctrl-Enter. After some time, on the right should appear:
}
\relative f' { c c g' g }
\addlyrics { twin -- kle twin -- kle }

\markup \justify {
  If something's not working, chekc for typos and try again.
}


\markup \vspace #0.1
\markup \large \bold "3. Pitches"

\markup \bold "TODO: start with super-short explanation of absolute mode"
\markup \wordwrap {
  Enter pitches by spelling their names.
  The entire melody must be within curly braces:
  \typewriter "{ c d e f g a b c }"
}

\markup \justify {
  There are many pitches named c
  (one in each octave):
}
\score { { c' c'' c''' } \addlyrics { c c c } \layout { } }

\markup \justify {
  Therefore, we use the \typewriter "\relative" command
  - TODO explain nicely
  If after f you write c, you'll get a c that is closest to that f
  i.e. a fourth lower:
}

\markup \typewriter "\relative { f c }"
\relative { f c }

\markup \justify {
  If after f you write a, you'll get an a that is closest to that f
  i.e. a third higher:
}

\markup \typewriter "\relative { f a }"
\relative { f a }

\markup \justify {
  Add a comma to get a pitch an octave lower,
  and a single quote to get one octave higher:
}


\markup \line \override #'(baseline-skip . 1) {
  \column {
    \typewriter "\relative { f a, }"
    \score { { \relative { f a, } } \layout {} }
  }
  \hspace #10
  \column {
    \typewriter "\relative { f e' a, e' }"
    \score { { \relative { f e' a, e' } } \layout {} }
  }
}


\markup \justify {
  Immediately after the "\relative" command there is a reference pitch for the first sound of melody.
  I recommend using f (with the appropriate number of commas or quotes to start in the correct octave).
}

\markup \typewriter "\relative f'' { d g }"
\relative f'' { d g }

\markup \bold { Accidentals }

\markup \justify {
  LilyPond will automatically show appropriate accidentals,
  just name sounds correctly.  Note! Remember to enter the actual
  name of the sound. For example, in original score there is
}
{ \key f \major r2 bes'2 }
\markup \justify {
  there is no accidental next to this note, so you may think that
  you should type “b” - but there is a flat in the key signatyure,
  so this sound is “bes” and that's how it must be typed.  If you
  type “b”, you'll get b - not what you want:
}

{ \key f \major r2 b'2 }

\markup \justify {
  Use
  \typewriter "\key" \italic tonic with added
  \typewriter "\minor" or \typewriter "\major"
  to set key signatyure:
}

\markup \typewriter "\relative f' { \key g \minor  g bes d }"
\relative f' { \key g \minor  g bes d }

\markup "key sig cheat-sheet:"
\new Staff \with { \remove "Time_signature_engraver" } {
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \override Score.RehearsalMark #'font-size = #0
  \override Score.RehearsalMark #'Y-offset = #6
  \once\override Score.RehearsalMark #'X-offset = #4
  \mark \markup \column { "Ges-dur" "es-moll" }
  \key ges \major R1
  \override Score.RehearsalMark #'X-offset = #0.9
  \mark \markup \column { "Des-dur" "bes-moll" }
  \key des \major R1
  \mark \markup \column { "As-dur" "f-moll" }
  \key as \major R1
  \mark \markup \column { "Es-dur" "c-moll" }
  \key es \major R1
  \mark \markup \column { "Bes-dur" "g-moll" }
  \key g \minor R1
  \mark \markup \column { "F-dur" "d-moll" }
  \key f \major R1
}

\new Staff \with { \remove "Time_signature_engraver" } {
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \override Score.RehearsalMark #'font-size = #0
  \override Score.RehearsalMark #'Y-offset = #6
  \once\override Score.RehearsalMark #'X-offset = #3
  \mark \markup \column { "C-dur" "a-moll" }
  \key c \major R1
  \override Score.RehearsalMark #'X-offset = #0.9
  \mark \markup \column { "G-dur" "e-moll" }
  \key g \major R1
  \mark \markup \column { "D-dur" "b-moll" }
  \key d \major R1
  \mark \markup \column { "A-dur" "fis-moll" }
  \key a \major R1
  \mark \markup \column { "E-dur" "cis-moll" }
  \key e \major R1
  \mark \markup \column { "B-dur" "gis-moll" }
  \key b \major R1
}



\markup \vspace #0.1
\markup \large \bold "4. Rhythm"

\markup \justify {
  Rhythms are written as numbers after pitch names.
  Use \typewriter 16 to get a sixteenth note, \typewriter 8
  to get an eight etc:
}

\markup \typewriter "\relative f' { g1 g2 g4 g8 g16 g }"
\relative f' { g1 g2 g4 g8 g16 g }

\markup \justify {
  If the duration is the same as the previous one, 
  it is not necessary to write it (so \typewriter "b8 b b b"
  means the same as \typewriter "b8 b8 b8 b8" ):
}

\markup \typewriter "\relative f' { b8 a g f c'4 g }"
\relative f' { b8 a g f c'4 g }

\markup \justify {
  Use dot to get dotted durations:
}
\noPageBreak
\markup \typewriter "{ b4. }"
\noPageBreak
{ b4. }

\markup \justify {
  To create ties (which connect notes so that they constitute onee sound),
  use tilde character \huge ~ after each note that should be tied.
   To type a tilde under Windows, you must press simultaneously
Shift and press the tilde (next to number 1) and then a space.
}
\markup \typewriter "\relative f' { a1~ a2~ a8 }"
\relative f' { a1~ a2~ a8 }


\markup \justify {
  The program will insert bar lines automatically -
  just specify the meter with command \typewriter "\\time":
}
\markup \typewriter "\relative f' { \\time 3/4  g4 g g f f f }"
\relative f' { \time 3/4  g4 g g f f f }

\markup \justify {
  Use letter “r” for rests:
}

\markup \typewriter "{ r1 r2 r4 r8 r16 r }"
{ r1 r2 r4 r8 r16 r }

\markup \justify {
  \bold "Full-Measure-Rests" are inserted using upper-case R.
  You must specify its actual duration!
  (Using R1 in the following example would give wrong results)
}
\markup \typewriter "{ \\time 2/4  R2  \\time 3/4  R2. }"
{ \time 2/4  R2 \time 3/4  R2. }

\markup \justify {
  Use this to get multiple "Full-Measure-Rests":
} \noPageBreak
\markup \typewriter "{ R1*4 }"
{ R1*4 }

\markup \justify {
  Similarly for Full-Measure-Rests of unusual length:
} \noPageBreak
\markup \typewriter "{ \\time 5/4  R1*5/4*3 }"
{ \time 5/4 R1*5/4*3 }

\markup \justify {
  Triplets and other tuplets - use \typewriter "\\tuplet":
}
\markup \typewriter "\\tuplet 3/2 { e4 f g }"
\relative f' { \tuplet 3/2 { e4 f g } }

\markup \justify {
  Use \typewriter "\partial" \italic duration to get a pickup measure:
}
\markup \typewriter "{ \partial 8*3 g8 a b c1 }"
{ \partial 8*3 g'8 a' b' c''1 }


\markup \vspace #0.1
\markup \large \bold "5. Words"

\markup \justify {
  Enter lyrics divided into sullables - insert a space,
  two dashes and a space again between syllables.
  LilyPond understands that multiple tied notes should get
  only one syllable:
}
\markup \typewriter
\column \override #'(font-name . "Lucida Console") {
  \line { "\relative f' { g1 a~ a~ a f }" }
  { "\addlyrics { po -- mi -- dor }" }
}
\relative f' { g1 a~ a~ a f }
\addlyrics { po -- mi -- dor }


\markup \justify {
  A melisma can be written in two ways: if there is a slur,
  simply add it (see below). If not, write "\melisma"
  after first melisma syllable adn "\melismaEnd" after last:
}
\noPageBreak
\markup \typewriter \column {
  \line {
    "\relative f' { d2"
    \bold "\melisma" f4 g
    \bold "\melismaEnd" "e2 }"
  }
  { "\addlyrics { glo -- ry }" }
}
\noPageBreak
\relative f' { d2\melisma f4 g\melismaEnd e2 }
\addlyrics { glo -- ry }

\markup \justify {
  Insert two underscores to get lyric extender:
}
\markup \typewriter \column {
  \line { "\relative f' { g4 \melisma a b c \melismaEnd }" }
  { "\addlyrics { la __ }" }
}
\relative f' { g4 \melisma a b c \melismaEnd }
\addlyrics { la __ }

\markup \vspace #0.1
\markup \large \bold "6. Miscellanenous"

\markup \justify {
  clefs:
}
\markup \line {
  \override #'(baseline-skip . 1) \column {
    \small \typewriter "\\clef G"
    \score { { \clef G s1 } \layout {} }
  }
  \hspace #4
  \override #'(baseline-skip . 1) \column {
    \small \typewriter "\\clef \"G_8\""
    \score { { \clef "G_8" s1 } \layout {} }
  }
  \hspace #4
  \override #'(baseline-skip . 2.7) \column {
    \small \typewriter "\\clef F"
    \score { { \clef F s1 } \layout {} }
  }
}

\markup \justify {
  Special barlines:
  \typewriter "\bar" \italic "barline type"
}
\markup \typewriter "{ R1  \bar \"||\"  R1  \bar \"|.\"  R1 }"
{ R1 \bar "||" R1 \bar "|." R1 }

\markup \justify {
  \typewriter "\\breathe":
}
{ g'4 a' \breathe f'2 }

\markup \justify {
  \bold Dynamics go after respective notes.
  Use \typewriter "\<" and \typewriter "\>" to start hairpins;
  end them with \typewriter "\!" (or some specific dynamic).
}
\markup \typewriter
"\relative f' { g4\f a f2\mp a1\p \< f2 g4\! f }"
\relative f' { g4\f a f2\mp a1\p \< f2 g4\! f }

\markup \justify {
  Textual (de)crescendos:
} \noPageBreak
\markup \typewriter \column {
  "\relative f' {"
  "  g8\cresc a b c b c\mf d e"
  "  f8\decresc e d c e\dim d c b\!"
  "}"
}
\relative f' {
  g8\cresc a b c b c\mf d e
  f8\decresc e d c e\dim d c b\!
}

\markup \justify {
  Articulation works similarly:
}
\markup \typewriter "{ b4\accent b\\tenuto b\staccato b\fermata }"
{ b4\accent b\tenuto b\staccato b\fermata }

\markup \justify {
  Use parentheses to get slurs:
}
\markup \typewriter "c8( d e4~ e8 f g a)"
\relative f' {
  c8( d e4~ e8 f g a)
}
\markup \justify {
  Slurs can be made dashed
  \typewriter "\slurDashed" and dotted
  \typewriter "\slurDotted". To revert these, use
  \typewriter "\slurSolid".
  Put these commands before first note of the slur.
}
\markup \justify {
  Frescobaldi's Quick insert panel is useful for adding dynamics
  and artykulations to multiple notes at once.
}

\markup \justify {
  \typewriter "\\tempo" \italic text \italic value :
}
\markup \typewriter "\\tempo \"Con moto\" 4=110"
\relative f' {
  \tempo "Con moto" 4=110
  c8 d e f g a b c
}

\markup \justify {
  Textual instructions should be placed in quotation marks
  and preceded by an underscore _ (to be below staff)
  caret ^ (to be above staff) or hyphen (then the program will decide).
}
\markup \typewriter "{ f'2_\"ping\" g'^\"pong\" }"
{ f'2_"ping" g'^"pong" }

\markup \vspace #0.1
\markup \large \bold "7. tips"

\markup \typewriter \column {
  "% Lines starting with the percent sign are ignored,"
  "% use them for commentts."
}

\markup \justify {
  Clicking on a note in the preview window Frescobaldi 
  moves the cursor to the corresponding places in the code.
}
\markup \justify {
  Write Each measure in a separate line, as was shown in the
  example at the beginning.
}
\markup \justify {
  If the score in the preview window is too small, you can resize 
  the preview window, or change the magnification
  (Buttons on the toolbar).
}
\markup \justify {
  From time to time (perhaps every measure) compile score,
  and make sure there are no mistakes.
  Most often it happens omitted apostrophe or comma -
  then a fragment of melody is in the wrong octave. 
  Sometimes error in the rhythmic values ​​make bar lines appear
  in strange places (or beaming will be completely different
  than what you want) - you'll have to start checking
  from the first note that looks suspicious.
}
