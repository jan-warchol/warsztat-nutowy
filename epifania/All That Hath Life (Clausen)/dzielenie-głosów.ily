\version "2.16.1"

% pomocnicze funkcje do dzielenia głosów

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \oneVoice
     \new Voice {
       \override NoteColumn #'ignore-collision = ##t
       \hideNotes
       \oneVoice
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       \override Slur #'stencil = ##f
       \override PhrasingSlur #'stencil = ##f
       #music
     }
   #})

rownyRytm =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \unHideNotes
     \oneVoice
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
       #music
     }
   #})
