oddHeaderMarkup = \markup \small \fill-line {
  \line {
    \on-the-fly #not-first-page \fromproperty #'header:title
    \on-the-fly #not-first-page \fromproperty #'header:kompozytor-krotki
    \on-the-fly #not-first-page "-"
    \on-the-fly #print-page-number-check-first \normalsize \bold \fromproperty #'page:page-number-string
  }
}

evenHeaderMarkup = \markup \small \fill-line {
  \line {
    \on-the-fly #not-first-page \fromproperty #'header:title
    \on-the-fly #not-first-page \fromproperty #'header:kompozytor-krotki
    \on-the-fly #not-first-page "-"
    \on-the-fly #print-page-number-check-first \normalsize \bold \fromproperty #'page:page-number-string
  }
}

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
    \line {
      \bold \huge \magnify #2 \fromproperty #'header:title
      \hspace #1.5
      \bold \large \magnify #1.4 \fromproperty #'header:subtitle
      \hspace #1
      \bold \fromproperty #'header:subsubtitle
    }
    \fill-line \general-align #Y #-1 {
      \fromproperty #'header:tlumaczenie
      \right-column {
        \italic \fromproperty #'header:adres-biblijny
        \italic \fromproperty #'header:przygotowanie-nut
        \bold \fromproperty #'header:composer
        \bold \fromproperty #'header:arranger
        \bold \fromproperty #'header:poet
      }
    }
  }
}