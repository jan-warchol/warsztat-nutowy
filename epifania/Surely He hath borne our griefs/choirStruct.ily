
sopranoMusicVar = { \include "vcanto.ily" }
altoMusicVar = { \include "valto.ily" }
tenorMusicVar = { \include "vtenore.ily" }
bassMusicVar = { \include "vbasso.ily" }

\addQuote "soprano" { \sopranoMusicVar }
\addQuote "alto" { \altoMusicVar }
\addQuote "tenor" { \tenorMusicVar }
\addQuote "bass" { \bassMusicVar }



sopranoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoVoice {
        \autoBeamOff
        \sopranoMusicVar
      }
  >>
}

altoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = altoVoice \with { \consists "Ambitus_engraver" } {
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
    \new Voice = bassVoice \with { \consists "Ambitus_engraver" } {
        \autoBeamOff
        \bassMusicVar
      }
  >>
}





sopranoStaffVar = {
    \new Staff = sopranoStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S " 
        \set Staff.shortInstrumentName = "S "
        \sopranoVoiceVar
      }
  }

altoStaffVar = {
    \new Staff = altoStaff {
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
    \new Staff = bassStaff {
        \clef bass
        \set Staff.instrumentName = "B " 
        \set Staff.shortInstrumentName = "B "
        \bassVoiceVar
      }
  }