
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
			     (let* ((orig (ly:grob-original grob))
				    (siblings (if (ly:grob? orig)
						  (ly:spanner-broken-into orig)
						  '())))

			       (if (or (null? siblings)
				       (and (>= (length siblings) 2)
					    (eq? (car (last-pair siblings))
						 grob)))
				   (ly:stencil-combine-at-edge
				    (ly:lyric-extender::print grob)
				    X RIGHT
				    (grob-interpret-markup grob text)
				    padding)
				   (ly:lyric-extender::print grob))))
		  (ly:music-property extender 'tweaks)))
     extender))
%Define custom lyric extenders, extra padding is an optional second arg
extendPeriod = #(extend "." 0.2 )
extendComma = #(extend "," 0.2 )
extendSemicolon = #(extend ";" 0.2 )
extendExclaim = #(extend "!" 0.2 )

shapeSlur =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Slur #'control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:slur::calc-control-points grob))
         (n 0))
     ;; add offsets to default coordinates
     (define loop (lambda (n)
                    (set-car! (list-ref coords n)
                              (+ (list-ref offsets (* 2 n))
                                 (car (list-ref coords n))))
                    (set-cdr! (list-ref coords n)
                              (+ (list-ref offsets (1+ (* 2 n)))
                                 (cdr (list-ref coords n))))
                    (if (< n 3)
                        (loop (1+ n)))))
     ;; return altered coordinates
     (loop n)
     coords))
