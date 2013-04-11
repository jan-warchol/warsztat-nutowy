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
  \key g \major
  \time 3/4
  \partial 4
  \repeat volta 2 {
  }
  \alternative {
    {
    }
    {
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    \breve
    \bar "|"
    \breve
    \cadenzaOff
  }
}
altomelody = \relative f' {
  \key g \major
  \time 3/4
  \partial 4
  \repeat volta 2 {
  }
  \alternative {
    {
    }
    {
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    \breve
    \bar "|"
    \breve
    \cadenzaOff
  }
}
tenormelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  \repeat volta 2 {
  }
  \alternative {
    {
    }
    {
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    \breve
    \bar "|"
    \breve
    \cadenzaOff
  }
}
bassmelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  \repeat volta 2 {
  }
  \alternative {
    {
    }
    {
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    \breve
    \bar "|"
    \breve
    \cadenzaOff
  }
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
}
secondverse = \lyricmode {
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
    \new Lyrics = sopranolyrics \with {
    }
    \lyricsto soprano \secondverse

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
