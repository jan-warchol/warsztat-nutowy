
subPmrkp = \markup { \normal-text \italic "sub." \dynamic p }
subP = #(make-dynamic-script subPmrkp )

accright = { \once \override Staff.AccidentalPlacement #'right-padding = #-0.05 }
accrighty = { \once \override Staff.AccidentalPlacement #'right-padding = #0.05 }
edtrill = \markup { "[ " \musicglyph #"scripts.trill" "]" }

#(define (extend text . padding)
   (let ((extender (make-music 'ExtenderEvent))
         ;; optional padding
         (padding (if (pair? padding)
                      (car padding)
                      0)))

     (set! (ly:music-property extender 'tweaks)
           (acons 'stencil (lambda (grob)
                             (ly:stencil-combine-at-edge
                              (ly:lyric-extender::print grob)
                              X RIGHT
                              (grob-interpret-markup grob text)
                              padding))
             (ly:music-property extender 'tweaks)))

     extender))
%Define custom lyric extenders, extra padding is an optional second arg
extendPeriod = #(extend "." )
extendComma = #(extend "," )
extendSemicolon = #(extend ";" )
extendExclaim = #(extend "!")