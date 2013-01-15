
violinIIMusicVar = { \include "violino2.ily" }

\addQuote "violinII" { \violinIIMusicVar }

violinIIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = violinIIVoice {
        \violinIIMusicVar
      }
  >>
}

violinIIStaffVar = {
    \new Staff = violinIIStaff {
        \clef treble
        \set Staff.instrumentName = "Vn.II" 
        \set Staff.shortInstrumentName = "Vn.II"
        \violinIIVoiceVar
      }
  }
