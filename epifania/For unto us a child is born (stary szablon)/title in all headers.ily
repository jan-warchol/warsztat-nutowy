oddHeaderMarkup = \markup \fill-line {
    \null
    \on-the-fly #not-first-page \fromproperty #'header:title
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  }

evenHeaderMarkup = \markup \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \on-the-fly #not-first-page \fromproperty #'header:title
    \null
  }