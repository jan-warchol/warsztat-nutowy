right = { \once \override LyricText #'self-alignment-X = #-0.8 }    
righty = { \once \override LyricText #'self-alignment-X = #-0.6 }    
rightyy = { \once \override LyricText #'self-alignment-X = #-0.4 }    
rightyyy = { \once \override LyricText #'self-alignment-X = #-0.2 }    
left = { \once \override LyricText #'self-alignment-X = #0.8 }    
lefty = { \once \override LyricText #'self-alignment-X = #0.6 }    
leftyy = { \once \override LyricText #'self-alignment-X = #0.4 }
leftyyy = { \once \override LyricText #'self-alignment-X = #0.2 }
down = { \once \override LyricText #'Y-offset = #'-2 }
downy = { \once \override LyricText #'Y-offset = #'-1.5 }
downyy = { \once \override LyricText #'Y-offset = #'-1 }
downyyy = { \once \override LyricText #'Y-offset = #'-0.5 }

sopranoLyricsVar = { 
    \new Lyrics = sopranoLyrics \lyricsto sopranoVoice \lyricmode { \include "lyrics1.ily" } 
}

altoLyricsVar = { 
    \new Lyrics = altoLyrics \lyricsto altoVoice \lyricmode { \include "lyrics2.ily" } 
}

tenorLyricsVar = { 
    \new Lyrics = tenorLyrics \lyricsto tenorVoice \lyricmode { \include "lyrics3.ily" } 
}

bassLyricsVar = { 
    \new Lyrics = bassLyrics \lyricsto bassVoice \lyricmode { \include "lyrics4.ily" } 
}
