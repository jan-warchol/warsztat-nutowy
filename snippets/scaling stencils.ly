
\override LyricText #'stencil =
#(lambda (grob)
   (ly:stencil-scale (lyric-text::print grob) 0.7 1.5))

\override Flag #'stencil =
#(lambda (grob)
   (ly:stencil-scale (ly:flag::print grob) 1 0.7))