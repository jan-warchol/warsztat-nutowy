\version "2.16.1"

% pomocnicze funkcje do dzielenia głosów.
% potrzebna jest osobna wersja do plików midi,
% bo tutaj nie chcemy "znikać" niczego tylko
% cała treść ma trafić do plików.

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \voiceTwo
     \new Voice {
       \voiceOne
       #music
     }
     \oneVoice
   #})

rownyRytm =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     #music
   #})

podzial =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \voiceTwo
     \new Voice {
       \voiceOne
       #music
     }
     \oneVoice
   #})
