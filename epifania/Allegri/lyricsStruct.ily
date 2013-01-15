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

choirSopranoILyricsVar = { 
    \new Lyrics = choirSopranoILyrics \lyricsto choirSopranoIVoice \lyricmode { \include "choirSopranoIWords.ily" } 
}

choirSopranoIILyricsVar = { 
    \new Lyrics = choirSopranoIILyrics \lyricsto choirSopranoIIVoice \lyricmode { \include "choirSopranoIIWords.ily" } 
}

choirAltoLyricsVar = { 
    \new Lyrics = choirAltoLyrics \lyricsto choirAltoVoice \lyricmode { \include "choirAltoWords.ily" } 
}

choirTenorLyricsVar = { 
    \new Lyrics = choirTenorLyrics \lyricsto choirTenorVoice \lyricmode { \include "choirTenorWords.ily" } 
}

choirBassLyricsVar = { 
    \new Lyrics = choirBassLyrics \lyricsto choirBassVoice \lyricmode { \include "choirBassWords.ily" } 
}


soloSopranoILyricsVar = { 
    \new Lyrics = soloSopranoILyrics \lyricsto soloSopranoIVoice \lyricmode { \include "soloSopranoIWords.ily" } 
}

soloSopranoIILyricsVar = { 
    \new Lyrics = soloSopranoIILyrics \lyricsto soloSopranoIIVoice \lyricmode { \include "soloSopranoIIWords.ily" } 
}

soloAltoLyricsVar = { 
    \new Lyrics = soloAltoLyrics \lyricsto soloAltoVoice \lyricmode { \include "soloAltoWords.ily" } 
}

soloTenorLyricsVar = { 
    \new Lyrics = soloTenorLyrics \lyricsto soloTenorVoice \lyricmode { \include "soloTenorWords.ily" } 
}

soloBassLyricsVar = { 
    \new Lyrics = soloBassLyrics \lyricsto soloBassVoice \lyricmode { \include "soloBassWords.ily" } 
}
