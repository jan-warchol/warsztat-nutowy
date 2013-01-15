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

\include "sopranoIWords.ily"
\include "altoWords.ily"
\include "tenorWords.ily"
\include "bassWords.ily"


sopranoILyricsVar = << 
    \new Lyrics = sopranoILyrics \lyricsto sopranoIVoice \sopranoIWordsVar
    \new Lyrics = sopranoILatinLyrics \lyricsto sopranoIVoice 
        { \override LyricText #'font-shape = #'italic \sopranoILatinWordsVar }
>>

altoLyricsVar = << 
    \new Lyrics = altoLyrics \lyricsto altoVoice \altoWordsVar
    \new Lyrics = altoLatinLyrics \lyricsto altoVoice 
        { \override LyricText #'font-shape = #'italic \altoLatinWordsVar }
>>

tenorLyricsVar = << 
    \new Lyrics = tenorLyrics \lyricsto tenorVoice \tenorWordsVar
    \new Lyrics = tenorLatinLyrics \lyricsto tenorVoice 
        { \override LyricText #'font-shape = #'italic \tenorLatinWordsVar }
>>

bassLyricsVar = << 
    \new Lyrics = bassLyrics \lyricsto bassVoice \bassWordsVar
    \new Lyrics = bassLatinLyrics \lyricsto bassVoice 
        { \override LyricText #'font-shape = #'italic \bassLatinWordsVar }
>>
