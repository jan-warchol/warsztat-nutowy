\version "2.13.45"

#(set-global-staff-size 16)

\include "filename.ily"

\paper {
    % page-count = #
    top-markup-spacing #'basic-distance = 12
    % markup-system-spacing #'basic-distance = 20
    % top-margin = \mm
    % bottom-margin = \mm
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "title in all headers.ily"
  }

\header {
    \include "titles.ily"
    poet = "Iz 9, 6"
    %tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
}

individualBreaks = { %{
    s1*10 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    %}
}

\include "voices.ily"
\include "staves.ily"
\include "lyrics.ily"


\markup {
    \typewriter {
        \column {
                  " "
            \bold "For      unto us a child is born,      unto us a son is given,"
                  "Albowiem Dziecię nam się    narodziło, Syn został nam   dany,"
                  " "
            \bold "And the government shall be upon His  shoulder,"
                  "I       władza     spocznie na   Jego barkach,"
                  " "
            \bold "And His  name shall be called:   Wonderful Councellor,"
                  "I   Jego imię będzie   brzmiało: Cudowny   Doradca,"
                  " "
            \bold "The mighty God, the everlasting Father, the Prince of Peace."
                  "    Mocny  Bóg,     odwieczny   Ojciec,     Książę    Pokoju."
                  " "
                  " "
          }
      }
}


\score {
    \new ChoirStaff = choir
      <<
        \sopranoStaffVar
        \sopranoLyricsVar
        \altoStaffVar
        \altoLyricsVar
        \tenorStaffVar
        \tenorLyricsVar
        \bassStaffVar
        \bassLyricsVar
      >>
    
    \layout { 
        indent = 0 \mm
        short-indent = 0 \mm
        system-count = #23
      }
}
