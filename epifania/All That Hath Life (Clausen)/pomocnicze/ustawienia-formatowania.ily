
\paper {
  #(define fonts
     (make-pango-font-tree "FreeSerif"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
}

\layout {
  \context {
    \Lyrics
    \override LyricText #'stencil =
    #(lambda (grob)
       (ly:stencil-scale (lyric-text::print grob) 1 1))
  }
  \context {
    \Score
    \override SpacingSpanner #'common-shortest-duration =
    #(ly:make-moment 1 20)
  }
}

shrink = #(define-music-function (parser location factor) (number?)
            #{ \once \override LyricText #'stencil =
               #(lambda (grob)
                  (ly:stencil-scale (lyric-text::print grob) factor 1)) #})
