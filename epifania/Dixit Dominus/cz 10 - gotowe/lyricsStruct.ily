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

sopranoOneLyricsVar = { 
    \new Lyrics = sopranoOneLyrics \lyricsto sopranoOneVoice { \include "sopranoOneWords.ily" } 
}

sopranoTwoLyricsVar = { 
    \new Lyrics = sopranoTwoLyrics \lyricsto sopranoTwoVoice { \include "sopranoTwoWords.ily" } 
}

altoLyricsVar = { 
    \new Lyrics = altoLyrics \lyricsto altoVoice { \include "altoWords.ily" } 
}

tenorLyricsVar = { 
    \new Lyrics = tenorLyrics \lyricsto tenorVoice { \include "tenorWords.ily" } 
}

bassLyricsVar = { 
    \new Lyrics = bassLyrics \lyricsto bassVoice { \include "bassWords.ily" } 
}
