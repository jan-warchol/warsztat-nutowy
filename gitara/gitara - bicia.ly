\version "2.17.21"
#(set-global-staff-size 18)

\header {
  title = "Gitara – bicia dla prawej ręki"
}

\paper {
  score-system-spacing #'basic-distance = #10
  score-system-spacing #'padding = #3.3
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

\markup \vspace #1
\markup \large {
  Ćwicz wszystko z metronomem (np.
  \typewriter \smaller \with-url #"http://a.bestmetronome.com/"
  "a.bestmetronome.com").
  Proponuję na początek \tiny \note #"4" #UP ≈ 40
}
\markup \vspace #1

<<
  \new Lyrics \with {
    \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #4
  }
  \lyricmode {
    "1"4 "2" "3" "4"
    "1"4 "2" "3" "4"
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow r4 r4 r4
    c4-\uparrow r4 r4 r4
  }
>>

<<
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #4
  }
  \lyricmode {
    "1"4 "2" "3" "4"
    "1"4 "2" "3" "4"
  }
  %}
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow r4 c4-\uparrow r4
    c4-\uparrow r4 c4-\uparrow r4
  }
>>

<<
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #4
  }
  \lyricmode {
    "1"4 "2" "3"
    "1"4 "2" "3"
  }
  %}
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 3/4
    c4-\uparrow c4-\uparrow c4-\uparrow
    c4-\uparrow c4-\uparrow c4-\uparrow
  }
>>

<<
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #4
  }
  \lyricmode {
    "1"4 "2" "3" "4"
    "1"4 "2" "3" "4"
  }
  %}
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow c4-\downarrow c4-\uparrow c4-\downarrow
    c4-\uparrow c4-\downarrow c4-\uparrow c4-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i
    "1"8 i "2" i "3" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \time 3/4
    \set Timing.beamExceptions = #'()
    c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
    c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #4
  }
  \lyricmode {
    "1"4 "2" "3" "4"
    "1"4 "2" "3" "4"
  }
  %}
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow r4 c4-\uparrow c4-\downarrow
    c4-\uparrow r4 c4-\uparrow c4-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i
    "1"8 i "2" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \time 2/4
    c4-\uparrow c8-\uparrow c8-\downarrow
    c4-\uparrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i
    "1"8 i "2" i "3" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \time 3/4
    c4-\uparrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
    c4-\uparrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i "4" i
    "1"8 i "2" i "3" i "4" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow c4-\uparrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
    c4-\uparrow c4-\uparrow c8-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i "4" i
    "1"8 i "2" i "3" i "4" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c8-\uparrow c8-\downarrow c8-\uparrow c4-\downarrow c8-\downarrow c8-\uparrow c8-\downarrow
    c8-\uparrow c8-\downarrow c8-\uparrow c4-\downarrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i "4" i
    "1"8 i "2" i "3" i "4" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow c8-\uparrow c4-\downarrow c8-\downarrow c8-\uparrow c8-\downarrow
    c4-\uparrow c8-\uparrow c4-\downarrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    "1"8 i "2" i "3" i "4" i
    "1"8 i "2" i "3" i "4" i
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \numericTimeSignature
    \time 4/4
    c4-\uparrow c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
    c4-\uparrow c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

<<
  \new Lyrics \lyricmode {
    \markup \large "1"8 \markup \tiny "2" \markup \tiny "3"
    \markup \large "2" \markup \tiny "2" \markup \tiny "3"
    \markup \large "1"8 \markup \tiny "2" \markup \tiny "3"
    \markup \large "2" \markup \tiny "2" \markup \tiny "3"
  }
  \new RhythmicStaff {
    \improvisationOn
    \override TextScript #'Y-offset = #-3.5
    \time 6/8
    c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
    c4.-\uparrow c8-\downarrow c8-\uparrow c8-\downarrow
  }
>>

\layout {
  \context {
    \Score
    proportionalNotationDuration = #(ly:make-moment 1 12)
  }
  \context {
    \Lyrics
    \override LyricText #'font-size = #0
  }
}
