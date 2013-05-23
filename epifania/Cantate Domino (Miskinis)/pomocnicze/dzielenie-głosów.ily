\version "2.16.1"

% pomocnicze funkcje do dzielenia głosów

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \new Devnull {
       #music
     }
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
     \new Voice  {
       \voiceOne
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       \override TextScript #'stencil = ##f
       #music
     }
     \oneVoice
   #})
