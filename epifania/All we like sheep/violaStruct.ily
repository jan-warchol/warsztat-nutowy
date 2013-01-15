
violaMusicVar = { \include "violaMusic.ily" }

\addQuote "viola" { \violaMusicVar }

violaVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = violaVoice {
        \violaMusicVar
      }
  >>
}

violaStaffVar = {
    \new Staff = violaStaff {
        \clef alto
        \set Staff.instrumentName = "Vla." 
        \set Staff.shortInstrumentName = "Vla."
        \violaVoiceVar
      }
  }
