
sopranoIMusicVar = { \relative c'' { \include "sopranoIMusic.ily" } }
altoMusicVar = { \relative c' { \include "altoMusic.ily" } }
tenorMusicVar = { \relative c' { \include "tenorMusic.ily" } }
bassMusicVar = { \relative c { \include "bassMusic.ily" } }

\addQuote "sopranoI" { \sopranoIMusicVar }
\addQuote "sopranoII" { \sopranoIIMusicVar }
\addQuote "alto" { \altoMusicVar }
\addQuote "tenor" { \tenorMusicVar }
\addQuote "bass" { \bassMusicVar }



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


altoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = altoVoice {
        \autoBeamOff
        \altoMusicVar
      }
  >>
}

tenorVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = tenorVoice {
        \autoBeamOff
        \tenorMusicVar
      }
  >>
}

bassVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = bassVoice {
        \autoBeamOff
        \bassMusicVar
      }
  >>
}





sopranoIStaffVar = {
    \new Staff = sopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S " 
        \set Staff.shortInstrumentName = "S "
        \sopranoIVoiceVar
      }
  }

altoStaffVar = {
    \new Staff = altoStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "A " 
        \set Staff.shortInstrumentName = "A "
        \altoVoiceVar
      }
  }

tenorStaffVar = {
    \new Staff = tenorStaff \with { \consists "Ambitus_engraver" } {
        \clef "treble_8"
        \set Staff.instrumentName = "T " 
        \set Staff.shortInstrumentName = "T "
        \tenorVoiceVar
      }
  }

bassStaffVar = {
    \new Staff = bassStaff \with { \consists "Ambitus_engraver" } {
        \clef bass
        \set Staff.instrumentName = "B " 
        \set Staff.shortInstrumentName = "B "
        \bassVoiceVar
      }
  }