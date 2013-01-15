
fluteMusicVar = { \relative c'' { \include "fluteMusic.ily" } }

\addQuote "flute" { \fluteMusicVar }

fluteVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = fluteVoice {
        \fluteMusicVar
      }
  >>
}

fluteStaffVar = {
    \new Staff = fluteStaff {
        \clef treble
        \set Staff.instrumentName = "Vn.I" 
        \set Staff.shortInstrumentName = "Vn.I"
        \fluteVoiceVar
      }
  }
