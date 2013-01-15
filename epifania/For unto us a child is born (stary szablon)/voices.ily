
accright = { \once \override Staff.AccidentalPlacement #'right-padding = #-0.05 }
accrighty = { \once \override Staff.AccidentalPlacement #'right-padding = #0.05 }

sopranoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = sopranoVoice {
        \autoBeamOff
        \relative c'' { \include "sopranoMusic.ily" }
      }
  >>
}

altoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = altoVoice {
        \autoBeamOff
        \relative c' { \include "altoMusic.ily" }
      }
  >>
}

tenorVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = tenorVoice {
        \autoBeamOff
        \relative c' { \include "tenorMusic.ily" }
      }
  >>
}

bassVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = bassVoice {
        \autoBeamOff
        \relative c { \include "bassMusic.ily" }
      }
  >>
}
