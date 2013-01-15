
choirSopranoIMusicVar = { \relative c'' { \include "choirSopranoIMusic.ily" } }
choirSopranoIIMusicVar = { \relative c'' { \include "choirSopranoIIMusic.ily" } }
choirAltoMusicVar = { \relative c' { \include "choirAltoMusic.ily" } }
choirTenorMusicVar = { \relative c' { \include "choirTenorMusic.ily" } }
choirBassMusicVar = { \relative c { \include "choirBassMusic.ily" } }

soloSopranoIMusicVar = { \relative c'' { \include "soloSopranoIMusic.ily" } }
soloSopranoIIMusicVar = { \relative c'' { \include "soloSopranoIIMusic.ily" } }
soloAltoMusicVar = { \relative c' { \include "soloAltoMusic.ily" } }
soloTenorMusicVar = { \relative c' { \include "soloTenorMusic.ily" } }
soloBassMusicVar = { \relative c { \include "soloBassMusic.ily" } }


choirSopranoIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = choirSopranoIVoice {
        \autoBeamOff
        \choirSopranoIMusicVar
      }
  >>
}

choirSopranoIIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = choirSopranoIIVoice {
        \autoBeamOff
        \choirSopranoIIMusicVar
      }
  >>
}

choirAltoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = choirAltoVoice {
        \autoBeamOff
        \choirAltoMusicVar
      }
  >>
}

choirTenorVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = choirTenorVoice {
        \autoBeamOff
        \choirTenorMusicVar
      }
  >>
}

choirBassVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = choirBassVoice {
        \autoBeamOff
        \choirBassMusicVar
      }
  >>
}

  
soloSopranoIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = soloSopranoIVoice {
        \autoBeamOff
        \soloSopranoIMusicVar
      }
  >>
}

soloSopranoIIVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = soloSopranoIIVoice {
        \autoBeamOff
        \soloSopranoIIMusicVar
      }
  >>
}

soloAltoVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = soloAltoVoice {
        \autoBeamOff
        \soloAltoMusicVar
      }
  >>
}

soloTenorVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = soloTenorVoice {
        \autoBeamOff
        \soloTenorMusicVar
      }
  >>
}

soloBassVoiceVar = {
  <<
    \sharedProperties
    \individualBreaks
    \new Voice = soloBassVoice {
        \autoBeamOff
        \soloBassMusicVar
      }
  >>
}



choirSopranoIStaffVar = {
    \new Staff = choirSopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S1" 
        \set Staff.shortInstrumentName = "S1 "
        \choirSopranoIVoiceVar
      }
  }
  
choirSopranoIIStaffVar = {
    \new Staff = choirSopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S2" 
        \set Staff.shortInstrumentName = "S2 "
        \choirSopranoIIVoiceVar
      }
  }

choirAltoStaffVar = {
    \new Staff = choirAltoStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "A" 
        \set Staff.shortInstrumentName = "A "
        \choirAltoVoiceVar
      }
  }

choirTenorStaffVar = {
    \new Staff = choirTenorStaff \with { \consists "Ambitus_engraver" } {
        \clef "treble_8"
        \set Staff.instrumentName = "T" 
        \set Staff.shortInstrumentName = "T "
        \choirTenorVoiceVar
      }
  }

choirBassStaffVar = {
    \new Staff = choirBassStaff \with { \consists "Ambitus_engraver" } {
        \clef bass
        \set Staff.instrumentName = "B" 
        \set Staff.shortInstrumentName = "B "
        \choirBassVoiceVar
      }
  }
  
  

soloSopranoIStaffVar = {
    \new Staff = soloSopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S1" 
        \set Staff.shortInstrumentName = "S1 "
        \soloSopranoIVoiceVar
      }
  }
  
soloSopranoIIStaffVar = {
    \new Staff = soloSopranoIStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "S2" 
        \set Staff.shortInstrumentName = "S2 "
        \soloSopranoIIVoiceVar
      }
  }

soloAltoStaffVar = {
    \new Staff = soloAltoStaff \with { \consists "Ambitus_engraver" } {
        \clef treble
        \set Staff.instrumentName = "A" 
        \set Staff.shortInstrumentName = "A "
        \soloAltoVoiceVar
      }
  }

soloTenorStaffVar = {
    \new Staff = soloTenorStaff \with { \consists "Ambitus_engraver" } {
        \clef "treble_8"
        \set Staff.instrumentName = \markup \override #'(baseline-skip . 2.2) \right-column { T solo }
        \set Staff.shortInstrumentName = \markup \override #'(baseline-skip . 2.2) \right-column { T solo }
        \soloTenorVoiceVar
      }
  }

soloBassStaffVar = {
    \new Staff = soloBassStaff \with { \consists "Ambitus_engraver" } {
        \clef bass
        \set Staff.instrumentName = "B" 
        \set Staff.shortInstrumentName = "B "
        \soloBassVoiceVar
      }
  }