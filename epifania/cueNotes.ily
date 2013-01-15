
sopranoCues = \context Staff = sopranoStaff {

  \new CueVoice \with { instrumentCueName = "" }
  \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
  \context Voice = sopranoVoice { \override MultiMeasureRest #'staff-position = #-4 }
  \cueDuring #"" # {  }
  \revert Staff.Stem #'beamlet-default-length
}

altoCues = \context Staff = altoStaff {

  \new CueVoice \with { instrumentCueName = "" }
  \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
  \context Voice = altoVoice { \override MultiMeasureRest #'staff-position = #-4 }
  \cueDuring #"" # {  }
  \revert Staff.Stem #'beamlet-default-length
}

tenorCues = \context Staff = tenorStaff {

  \new CueVoice \with { instrumentCueName = "" }
  \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
  \context Voice = tenorVoice { \override MultiMeasureRest #'staff-position = #-4 }
  \cueDuring #"" # {  }
  \revert Staff.Stem #'beamlet-default-length
}

bassCues = \context Staff = bassStaff {

  \new CueVoice \with { instrumentCueName = "" }
  \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
  \context Voice = bassVoice { \override MultiMeasureRest #'staff-position = #-4 }
  \cueDuring #"" # {  }
  \revert Staff.Stem #'beamlet-default-length
}



\new ChoirStaff = choir
<<
  <<
    \sopranoStaffVar
    \sopranoCues
  >>
  \sopranoLyricsVar
  <<
    \altoStaffVar
    \altoCues
  >>
  \altoLyricsVar
  <<
    \tenorStaffVar
    \tenorCues
  >>
  \tenorLyricsVar
  <<
    \bassStaffVar
    \bassCues
  >>
  \bassLyricsVar
>>










cueStaffProperties = \with {
  \remove "Time_signature_engraver"
  alignAboveContext = #"sopranoStaff"
  fontSize = #-4
  \override StaffSymbol #'staff-space = #(magstep -4)
  \override StaffSymbol #'thickness = #(magstep -4)
  \override KeySignature #'transparent = ##t
  \override Stem #'beamlet-default-length = #'(0.66 . 0.66)
  firstClef = ##f
}

\new ChoirStaff = choir
<<
  \new Staff \cueStaffProperties {
    \key sol \minor \stopStaff s1*3 \startStaff
    <<
      \new Voice { \voiceOne \quoteDuring #"violinI" { s1 s2. } }
      \new Voice { \voiceTwo \quoteDuring #"viola" { s1 s4 } }
    >>
  }
  \sopranoStaffVar
  \sopranoLyricsVar
  \altoStaffVar
  \altoLyricsVar
  \tenorStaffVar
  \tenorLyricsVar
  \bassStaffVar
  \bassLyricsVar
>>