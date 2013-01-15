
sopranoIMusicVar = { \relative c'' { \include "sopranoIMusic.ily" } }
sopranoIIMusicVar = { \relative c'' { \include "sopranoIIMusic.ily" } }

\addQuote "sopranoI" { \sopranoIMusicVar }
\addQuote "sopranoII" { \sopranoIIMusicVar }



sopranoIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoIVoice {
        \autoBeamOff
        \sopranoIMusicVar
      }
  >>
}

sopranoIIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoIIVoice {
        \autoBeamOff
        \sopranoIIMusicVar
      }
  >>
}





sopranoIStaffVar = {
    \new Staff = sopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S1 " 
        \set Staff.shortInstrumentName = "S1 "
        \sopranoIVoiceVar
      }
  }

sopranoIIStaffVar = {
    \new Staff = sopranoIIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S2 " 
        \set Staff.shortInstrumentName = "S2 "
        \sopranoIIVoiceVar
      }
  }
