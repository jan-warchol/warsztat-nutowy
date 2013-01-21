\version "2.17.3"
#(set-global-staff-size 16.5)

\header	{
  title = "Per Crucem Tuam"
  composer = "muzyka: Piotr Pałka"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \dynamicUp
  \key f \minor
  \time 3/4
  \tempo 4=40
  \repeat volta 2 {
    \partial 4
    c4\mp | c c f
    \time 4/4
    g2. \breathe g8 as
    bes4 f f f8 g
    e1 \breathe
  }
  \repeat volta 2 {
    as4( \mf es) as as8\melisma c\melismaEnd
    bes2. \breathe bes8 c
  }
  \alternative {
    {
      des4 as as as8 c | bes1 \breathe
    }
    {
      des4\> as4 as g8 f | g1\!
    }
  }
  \mark Fine
  \bar "|."
}
altomelody = \relative f' {
  \dynamicUp
  \key f \minor
  \time 3/4
  \tempo 4=40
  \repeat volta 2 {
    \partial 4
    c4\mp | c c c
    \time 4/4
    c8( des c bes c4) \breathe c8 c
    des4 f8\melisma es\melismaEnd des\melisma c\melismaEnd bes des
    des4( c8 bes c2) \breathe
  }
  \repeat volta 2 {
    es2\mf f4 f
    as4( g8 f g4) \breathe es8 es
  }
  \alternative {
    {
      des4 des c des8 des
      as'4( g8 f g4 es) \breathe
    }
    {
      des4\> des c des8 des
      f4(\! e8 d e2)
    }
  }
  \mark Fine
  \bar "|."
}
tenormelody = \relative f {
  \dynamicUp
  \key f \minor
  \time 3/4
  \tempo 4=40
  \repeat volta 2 {
    \partial 4
    f4\mp | f8\melisma g\melismaEnd as\melisma bes\melismaEnd as\melisma f\melismaEnd
    \time 4/4
    g4( c g) \breathe g8 g
    bes4 as bes8\melisma as\melismaEnd g c16\melisma bes\melismaEnd
    g1 \breathe
  }
  \repeat volta 2 {
    as2\mf as4 c
    bes2. \breathe bes8 bes
  }
  \alternative {
    {
      as4 as8\melisma bes\melismaEnd as8\melisma g\melismaEnd f f
      es2\melisma bes'\melismaEnd \breathe
    }
    {
      as4\> as8\melisma bes\melismaEnd as8\melisma g\melismaEnd f g
      g1\!
    }
  }
  \mark Fine
  \bar "|."
}
bassmelody = \relative f {
  \dynamicUp
  \key f \minor
  \time 3/4
  \tempo 4=40
  \repeat volta 2 {
    \partial 4
    f4\mp | f f f
    \time 4/4
    e2. \breathe c8 c
    bes4 des8\melisma c\melismaEnd bes4 g8 f
    c'1 \breathe
  }
  \repeat volta 2 {
    c2\mf des4 des
    es2. \breathe es8 es
  }
  \alternative {
    {
      f4 f es bes8 bes | es1
    }
    {
      f4\> f es bes8 bes | c1\!
    }
  }
  \mark Fine
  \bar "|."
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Per Cru -- cem Tu -- am
  a -- do -- ra -- mus Te,
  Do -- mi -- ne.
  Cru -- cem Tu -- am
  a -- do -- ra -- mus Te,
  Do -- mi -- ne.
  ra -- mus Te,
  Do -- mi -- ne.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \clef treble
      \new Voice = soprano {
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \new Voice = alto {
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text

    \new Staff = tenor {
      \clef "treble_8"
      \new Voice = tenor {
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \new Voice = bass {
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \text
  >>
  \layout {
    indent = 0
  }
}
