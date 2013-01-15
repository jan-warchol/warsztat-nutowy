
    \repeat volta 2 {
        d2 b4. ( c8 ) | % 34
        d2 g,2 | % 35
        a8 ( [ b8 c8 d8 ] c4 ) b4 | % 36
        a1 | % 37
        b8 ( [ c8 d8 e8 ] d4 ) d4 | % 38
        g2. d4 | % 39
        c4 ( b8 [ c8 ) ] a4. ( g8 ) |
        g1 
      }
    b8 ( [ a8 b8 c8 ] b4 ) b4 | % 42
    a2 g2 | % 43
    c4 ( b4 a4 ) g4 | % 44
    << { \voiceOne fis2. fis4 } \new CueVoice = Latin { \voiceTwo \once \override NoteColumn #'force-hshift = #2.6 fis1 } >> \oneVoice
    g8 ( [ fis8 g8 a8 ] g4 ) g4 | % 46
    e'2 cis2 | % 47
    d4 ( e8 [ d8 ] cis4. ) d8 | % 48
    d1 | % 49
    d2 b4. ( c8 ) | 
    << { \voiceOne d2 d4\rest g,4 } \context CueVoice = Latin { \voiceTwo \once \override NoteHead #'transparent = ##t  d'2 g,2 } >> \oneVoice
    a8 ( [ b8 c8 d8 ] c4 ) b4 | % 52
    << { a2. b8 ( [ c8 ) ] } \context CueVoice = Latin { \voiceTwo \once \override NoteColumn #'force-hshift = #2.6 a1 } >> \oneVoice
    d8 ( [ c8 d8 e8 ] d4 ) d4 | % 54
    g2 d2 | % 55
    c4 ( b4 a4. ) g8 | % 56
    g1 