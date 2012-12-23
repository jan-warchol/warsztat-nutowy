\version "2.17.3"
#(set-global-staff-size 18)

\header	{
  title = 
  composer = 
}

\paper { }
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
}
altomelody = \relative f' {
}
tenormelody = \relative c' {
}
bassmelody = \relative f {
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout { }
}
