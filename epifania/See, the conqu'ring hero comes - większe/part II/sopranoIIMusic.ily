
    \repeat volta 2 {
        b2 g4. ( a8 ) | % 34
        b2 d,2 | % 35
        fis8 ( [ g8 a8 b8 ] a4 ) g4 | % 36
        fis1 | % 37
        g8 ( [ a8 b8 c8 ] \stemUp b4 ) b4 \stemNeutral | % 38
        d2. b4 | % 39
        a4 ( g8 [ a8 ) ] fis4. ( g8 ) | 
        g1 }
    | % 41
    g8 ( [ fis8 g8 a8 ] g4 ) g4 | % 42
    fis2 e2 | % 43
    fis4 ( g4 fis4 ) e4 | % 44
    << { \voiceOne dis2. dis4  } \new CueVoice = Latin { \voiceTwo \once \override Accidental #'transparent = ##t \once \override NoteColumn #'force-hshift = #2.6 dis1 } >> \oneVoice
    e8 ( [ dis8 e8 fis8 ] e4 ) e4 | % 46
    g2 a2 | % 47
    fis4 ( g8 [ fis8 ] e4 ) a4 | % 48
    fis1 | % 49
    b2 g4. ( a8 ) | 
    << { \voiceOne b2 b4\rest d,4 } \context CueVoice = Latin { \voiceTwo \once \override NoteHead #'transparent = ##t b'2 d,2 } >> \oneVoice
    fis8 ( [ g8 a8 b8 ] a4 ) g4 | % 52
    << { fis2. g8 ( [ a8 ) ] } \context CueVoice = Latin { \voiceTwo \once \override NoteColumn #'force-hshift = #2.6 fis1 } >> \oneVoice
    b8 ( [ a8 b8 c8 ] b4 ) b4 | % 54
    d2 b2 | % 55
    a4 ( g2 ) fis4 | % 56
    g1