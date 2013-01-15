oddHeaderMarkup = \markup \small \fill-line {
    \line {
        \on-the-fly #not-first-page \fromproperty #'header:title
        \on-the-fly #not-first-page "-"
        \on-the-fly #print-page-number-check-first \normalsize \bold \fromproperty #'page:page-number-string
      }
  }

evenHeaderMarkup = \markup \small \fill-line {
    \line {
        \on-the-fly #not-first-page \fromproperty #'header:title
        \on-the-fly #not-first-page "-"
        \on-the-fly #print-page-number-check-first \normalsize \bold \fromproperty #'page:page-number-string
      }
  }
