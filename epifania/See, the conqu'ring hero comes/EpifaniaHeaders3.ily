oddHeaderMarkup = {}

evenHeaderMarkup = {}

oddFooterMarkup = \markup {
    \column {
        \fill-line {
            %% Tagline header field only on last page.
            \on-the-fly #last-page \tiny \fromproperty #'header:tagline
          }
      }
  }

bookTitleMarkup = \markup {
    \column {
        \fromproperty #'header:dedication 
        \override #'(baseline-skip . 4.0)
        \column {
            \vspace #1
            \bold \huge \magnify #2 \fromproperty #'header:title
            \line {
                \bold \large \magnify #1.4 \fromproperty #'header:subtitle
                \bold \magnify #1.1 \fromproperty #'header:subsubtitle
              }
          }
        \fill-line \general-align #Y #-1 {
            \translation
            \right-column {
                \italic \scripture
                \bold \fromproperty #'header:composer
                \bold \fromproperty #'header:arranger
                \bold \fromproperty #'header:poet
              }
          }
      }
  }