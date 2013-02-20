\markup "to jest zapisane w trybie absolutnym:"

{
  \clef "G_8"
  c d e f g a b c'
}
\addlyrics { c d e f g a b c' }

{
  \clef "G_8"
  g, a, b, c d e f g a b c' d' e' f' g' a' b' c''
}
\addlyrics { g, a, b, c d e f g a b c' d' e' f' g' a' b' c'' }

\markup \justify {
  pamiętasz, że tenory mają specjalny klucz z ósemką pod spodem?
  dźwięki w nim są przesunięte o oktawę w stosunku do klucza wiolinowego:
}

{
  g, a, b, c d e f g a b c' d' e' f' g' a' b' c''
}
\addlyrics { g, a, b, c d e f g a b c' d' e' f' g' a' b' c'' }

\markup " "
\markup "początek partii tenorów zapisany za pomocą trybu absolutnego wygląda tak:"

\markup \typewriter \column {
  "{ \key g \minor \clef \"G_8\""
  "  bes16 f g a bes d' c' es' d' c' bes c' d' f' es' g' }"
}
{
  \key g \minor \clef "G_8"
  bes16 f g a bes d' c' es' d' c' bes c' d' f' es' g'
}

\markup "jeśli chcemy użyć trybu względnego, piszemy np."
\markup \typewriter "\relative f"
\markup "wtedy dźwiękiem odniesienia dla pierwszego wpisanego dźwięku będzie f małe:"
{ \key g \minor \clef "G_8" f4 }
\markup "a melodię zapiszemy tak:"
\markup \typewriter \column {
  "\relative f { \key g \minor \clef \"G_8\""
  "  bes16 f g a bes d c es d c bes c d f es g }"
}
\relative f {
  \key g \minor \clef "G_8"
  bes16 f g a bes d c es d c bes c d f es g
}
