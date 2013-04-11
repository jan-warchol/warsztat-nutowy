\version "2.17.3"
#(set-global-staff-size 20)

\header	{
  title = "Tylko w Twoim Miłosierdziu"
  poet = "słowa zwrotek: Ps 145"
  composer = "muzyka: Paweł Bębenek"
}

\paper {
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
}
altomelody = \relative f' {
}
tenormelody = \relative f {
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
    \new Lyrics = sopranolyrics \with {
    }
    \lyricsto soprano \text

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
  \layout {
    \override NoteHead #'style = #'altdefault
    indent = 0
  }
}
