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
    \new Lyrics = sopranoLyrics \lyricsto sopranoVoice \lyricmode { \include "Words.ily" } 
}

altoLyricsVar = { 
    \new Lyrics = altoLyrics \lyricsto altoVoice \lyricmode { \include "Words.ily" } 
}

tenorLyricsVar = { 
    \new Lyrics = tenorLyrics \lyricsto tenorVoice \lyricmode { \include "Words.ily" } 
}

bassLyricsVar = { 
    \new Lyrics = bassLyrics \lyricsto bassVoice \lyricmode { \include "Words.ily" } 
}

sopranoRepeatLyricsVar = { 
    \new Lyrics = sopranoRepeatLyrics \lyricsto sopranoVoice \lyricmode { \include "RepeatWords.ily" } 
}

altoRepeatLyricsVar = { 
    \new Lyrics = altoRepeatLyrics \lyricsto altoVoice \lyricmode { \include "RepeatWords.ily" } 
}

tenorRepeatLyricsVar = { 
    \new Lyrics = tenorRepeatLyrics \lyricsto tenorVoice \lyricmode { \include "RepeatWords.ily" } 
}

bassRepeatLyricsVar = { 
    \new Lyrics = bassRepeatLyrics \lyricsto bassVoice \lyricmode { \include "RepeatWords.ily" } 
}
