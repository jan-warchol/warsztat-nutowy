\include "../miscCommands.ily"
\include "../choirStruct.ily"

sopranoOneClarinet = {
    \new Staff {
        \set Staff.midiInstrument = "clarinet"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \sopranoOneVoiceVar
          >>
      }
  }
  
sopranoTwoClarinet = {
    \new Staff {
        \set Staff.midiInstrument = "clarinet"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \sopranoTwoVoiceVar
          >>
      }
  }

tenorClarinet = {
    \new Staff {
        \set Staff.midiInstrument = "clarinet"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \tenorVoiceVar
          >>
      }
  }

bassClarinet = {
    \new Staff {
        \set Staff.midiInstrument = "clarinet"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \bassVoiceVar
          >>
      }
  }

sopranoOneEngHn = {
    \new Staff {
        \set Staff.midiInstrument = "english horn"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \sopranoOneVoiceVar
          >>
      }
  }
sopranoTwoEngHn = {
    \new Staff {
        \set Staff.midiInstrument = "english horn"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \sopranoTwoVoiceVar
          >>
      }
  }

tenorEngHn = {
    \new Staff {
        \set Staff.midiInstrument = "english horn"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \tenorVoiceVar
          >>
      }
  }

bassEngHn = {
    \new Staff {
        \set Staff.midiInstrument = "english horn"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.8
          <<
            s1\mf
            \bassVoiceVar
          >>
      }
  }

sopranoOnePno = {
    \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.5
        \set Staff.midiMaximumVolume = #0.65
          <<
            s1\mf
            \sopranoOneVoiceVar
          >>
      }
  }

sopranoTwoPno = {
    \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.5
        \set Staff.midiMaximumVolume = #0.65
          <<
            s1\mf
            \sopranoTwoVoiceVar
          >>
      }
  }

tenorPno = {
    \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.5
        \set Staff.midiMaximumVolume = #0.65
          <<
            s1\mf
            \tenorVoiceVar
          >>
      }
  }

bassPno = {
    \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.5
        \set Staff.midiMaximumVolume = #0.65
          <<
            s1\mf
            \bassVoiceVar
          >>
      }
  }

