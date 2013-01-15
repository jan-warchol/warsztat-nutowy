
violinIMusicVar = { \relative c'' { \include "violinIMusic.ily" } }

\addQuote "violinI" { \violinIMusicVar }

violinIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = violinIVoice {
        \violinIMusicVar
      }
  >>
}

violinIStaffVar = {
    \new Staff = violinIStaff {
        \clef treble
        \set Staff.instrumentName = "Vn.I" 
        \set Staff.shortInstrumentName = "Vn.I"
        \violinIVoiceVar
      }
  }
