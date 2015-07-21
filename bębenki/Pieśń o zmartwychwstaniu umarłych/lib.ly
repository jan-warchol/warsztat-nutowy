
% MISC DEFINITIONS:

%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Store the following until
%LSR %%   %% end of include file
%LSR %% as splitStaffBarLine-1.0.ily.
%LSR %% To use it in your projects, write
%LSR %%   \include "<path-to-file/>splitStaffBarLine-1.0.ily"
%LSR %% to define the commands described below.
%LSR %%
%LSR %% Cheers,
%LSR %%   Alexander
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% splitStaffBarLine
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Version 1.0
%LSR %% 2009, Alexander Kobel (www.a-kobel.de)
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Defines the
%LSR %%   \splitStaffBarLine
%LSR %% command, which adds arrows in north-east and south-east
%LSR %% directions at a bar line, to denote that several voices
%LSR %% sharing a staff will each continue on a staff of their own in
%LSR %% the next system.
%LSR %% Automatically inserts a break at this position, otherwise
%LSR %% the symbol does not make any sense.
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% As a side-effect, defines the markup command
%LSR %%   \arrow-at-angle <angle> <length> <fill>
%LSR %% as a helper function, which draws an arrow of length <length>
%LSR %% at an angle of <angle> (in degrees).
%LSR %% If <fill> = #t, the arrowhead is filled.
%LSR %% Internally uses the fontsize and thickness properties, as
%LSR %% \arrow-head and \draw-line do.
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR
%LSR %% This should also work with older version, probably up
%LSR %% to <= 2.10. Please report if this is the case.

#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          ;; PI-OVER-180 and degrees->radians are taken from flag-styles.scm
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y 1.4))
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)	
                                              #:arrow-head X RIGHT fill)))))

splitStaffBarLineMarkup = \markup
\with-dimensions #'(0 . 0) #'(0 . 0)
\translate #'(4.5 . 0) {
  \combine
    \arrow-at-angle #45 #(sqrt 8) ##f
    \arrow-at-angle #-45 #(sqrt 8) ##f
}

joinStaffUpMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #45 #(sqrt 8) ##f
}

joinStaffDownMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #-45 #(sqrt 8) ##f
}

splitStaffBarLine = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob splitStaffBarLineMarkup)
        0))
  \break
}

joinStaffUp = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinStaffUpMarkup)
        0))
  \break
}

joinStaffDown = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinStaffDownMarkup)
        0))
  \break
}

