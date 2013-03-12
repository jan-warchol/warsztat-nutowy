
at =
#(define-music-function (parser location t e m)
   (ly:duration? ly:event? ly:music?)
   #{ << #m { \skip $t <>$e } >> #})

%\paper { ragged-last = ##f }

\new Voice {
  \at 1*1/3 \p
  \at 1*2/3 \<
  \at 1\!
  c'1
}

\new Voice {
  \at 4. \< \at 2 \! { c'4 d' e' }
}

\new Voice \relative c'' {
  << f4. {s4 \once\hideNotes f8\turn\noBeam } >> g16-. a-.
}

\new Voice \relative c'' {
  \at 4 \turn f4. g16-. a-.
}



musat =
#(define-music-function (parser location t e m)
   (ly:duration? ly:music? ly:music?)
   #{ << #m { \skip $t <>$e } >> #})

<<
  \new Staff { \musat 2 { e'8 f' g' a' } c'1 }
  \new Staff { c'4 d' e' f' }
>>