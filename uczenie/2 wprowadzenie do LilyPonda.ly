\version "2.15.36"

% #(set-global-staff-size 19)

% #(ly:set-option 'debug-skylines #t)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #2
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #3
  markup-markup-spacing #'padding = #2
  ragged-bottom = ##t
}

\header {
  instrument = "Wprowadzenie do LilyPonda"
  tagline = \markup {
    © Jan Warchoł 2012,
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    { "licencja CC by-nc-sa" }
  }
}

\markup \large \bold "1. Jak to działa"
\markup \justify {
  Zapisujesz muzykę słowami (wyobraź sobie, że wysyłasz
  SMSa z melodią piosenki), "i każesz" programowi zrobić
  "na podstawie" "tego zapisu" nuty.
}
\markup \justify {
  W tej instrukcji najpierw omawiam zagadnienie,
  potem \typewriter "czczionką maszynową" podaję
  przykład zapisu "i na koniec" pokazuję, "co powinien"
  wyświetlić program po skompilowaniu tego zapisu.
}

\markup \vspace #0.1
\markup \large \bold "2. Pierwsze uruchomienie"

\markup \justify {
  Wejdź na \typewriter \smaller \with-url
  #"http://www.lilybin.com/" "www.lilybin.com" i wpisz:
}
\markup \column \override #'(font-name . "Lucida Console") {
  "\relative f' {"
  "  g e e"
  "}"
  "\addlyrics {"
  "  wlazł ko -- tek"
  "}"
}
\markup \justify \italic {
  Uwaga! po literze f jest apostrof (to \bold "nie jest"
  znak z klawisza obok cyfry 1).
}
\markup \justify {
  Wciśnij Ctrl+Enter. Po jakimś czasie po prawej
  powinno pojawić się:
}
\relative f' { g e e }
\addlyrics { wlazł ko -- tek }

\markup \justify {
  \italic Uwaga! zawsze gdy coś nie działa tak jak powinno,
  sprawdź czy nie ma literówek i spróbuj jeszcze raz.
  "Jeżeli to nic nie da," skontaktuj się z Jankiem.
}


\markup \vspace #0.1
\markup \large \bold "3. Wysokości dźwięków"
\markup \wordwrap {
  Dźwięki wpisuje się podając ich nazwy.  Cała melodia musi być
  wewnątrz nawiasów klamrowych: \typewriter "{ c d e f g a b c }"
}

\markup \justify {
  Jest wiele dźwięków nazywających się, na przykład, c
  (po jednym w każdej oktawie):
}
\score { { c' c'' c''' } \addlyrics { c c c } \layout { } }

\markup \justify {
  Dlatego używamy polecenia \typewriter "\relative"
  - wtedy program wybiera dźwięk, który jest najbliżej
  poprzedniego. Jeśli po \typewriter f napiszesz \typewriter c
  to dostaniesz c najbliższe f - czyli kwartę niższe:
}

\markup \typewriter "\relative { f c }"
\relative c' { f c }

\markup \justify {
  Jeśli po \typewriter f napiszesz \typewriter a
  to dostaniesz a najbliższe f - czyli tercję wyższe:
}

\markup \typewriter "\relative { f a }"
\relative c' { f a }

\markup \justify {
  Jeśli po nazwie dźwięku napiszesz przecinek,
  dostaniesz dźwięk oktawę niżej niż ten najbliższy.
  Jeśli apostrof - oktawę wyżej:
}


\markup \line \override #'(baseline-skip . 1) {
  \column {
    \typewriter "\relative { f a, }"
    \score { { \relative c' { f a, } } \layout {} }
  }
  \hspace #10
  \column {
    \typewriter "\relative { f e' a, e' }"
    \score { { \relative c' { f e' a, e' } } \layout {} }
  }
}


\markup \justify {
  Bezpośrednio po poleceniu \typewriter "\relative"
  podaje się punkt odniesienia dla pierwszego dźwięku melodii.
  Polecam \typewriter f (z odpowiednią liczbą apostrofów
  lub przecinków żeby wystartować we właściwej oktawie):
}

\markup \typewriter "\relative f'' { d g }"
\relative f'' { d g }

\markup \bold { Znaki chromatyczne }

\markup \justify {
  LilyPond automatycznie pokaże odpowiednie znaki
  chromatyczne, wystarczy poprawnie nazwać dźwięki.
  \italic Uwaga!
  Pamiętaj, żeby wpisać rzeczywistą nazwę dźwięku.
  \italic Przykład:
  "w przepisywanej" partyturze widać:
}
{ \key f \major r2 bes'2 }
\markup \justify {
  przy tej nucie nie stoi żaden znak chromatyczny,
  więc mogłoby się wydawać, że należy wpisać \typewriter b -
  "ale w tonacji" jest bemol na środkowej linii, więc
  ten dźwięk to \typewriter bes i tak należy go zapisać.
  Jeśli napiszemy \typewriter b "to dostaniemy b" -
  niewłaściwy dźwięk:
}

{ \key f \major r2 b'2 }

\markup \justify {
  \bold Tonację określa się poleceniem
  \typewriter "\key" \italic tonika "z dopiskiem"
  \typewriter "\minor" (molowa) lub \typewriter "\major"
  (durowa):
}

\markup \typewriter "\relative f' { \key g \minor  g bes d }"
\relative f' { \key g \minor  g bes d }



\markup \vspace #0.1
\markup \large \bold "4. Wartości rytmiczne"

\markup \justify {
  Wartości rytmiczne zapisuje się jako liczby po nazwach dźwięków.
  Żeby dostać szesnastkę trzeba wpisać \typewriter 16 ,
  ósemkę \typewriter 8 "i tak dalej:"
}

\markup \typewriter "\relative f' { g1 g2 g4 g8 g16 g }"
\relative f' { g1 g2 g4 g8 g16 g }

\markup \justify {
  Jeśli wartość rytmiczna nuty jest taka sama jak poprzednia,
  to nie trzeba jej pisać (czyli \typewriter "b8 b b b"
  program zrozumie tak samo jak \typewriter "b8 b8 b8 b8" ):
}

\markup \typewriter "\relative f' { b8 a g f c'4 g }"
\relative f' { b8 a g f c'4 g }

\markup \justify {
  Wartości rytmiczne z kropką uzyskuje się
  za pomocą kropki:
}
\noPageBreak
\markup \typewriter "{ r4. }"
\noPageBreak
{ r4. }

\markup \justify {
  Żeby połączyć kilka nut o tej samej wysokości
  w jeden dźwięk łukami przedłużającymi, napisz tyldę
  \huge ~ "po każdej nucie" która ma być przedłużona.
  Żeby pod Windowsem wpisać tyldę, trzeba wcisnąć
  jednocześnie Shift i klawisz z tyldą (obok cyfry 1)
  a potem spację.
}
\markup \typewriter "\relative f' { a1~ a2~ a8 }"
\relative f' { a1~ a2~ a8 }


\markup \justify {
  Program sam wstawia kreski taktowe - wystarczy
  podać \bold metrum poleceniem \typewriter "\\time":
}
\markup \typewriter "\relative f' { \\time 3/4  g4 g g f f f }"
\relative f' { \time 3/4  g4 g g f f f }

\markup \justify {
  \bold Pauzy zapisuje się używając litery \typewriter r
  (ang. \italic rest ):
}

\markup \typewriter "{ r1 r2 r4 r8 r16 r }"
{ r1 r2 r4 r8 r16 r }


\markup \vspace #0.1
\markup \large \bold "5. Słowa"

\markup \justify {
  Tekst, który ma być podpisany pod nutami, należy
  wpisać podzielony na sylaby - pomiędzy sylabami
  słowa należy wstawić spację, dwa myślniki i znowu spację.
  Program rozumie, że do kilku nut połączonych łukami
  przedłużającymi w jeden dźwięk należy przypisać tylko
  jedną sylabę:
}
\markup \typewriter
\column \override #'(font-name . "Lucida Console") {
  \line { "\relative f' { g1 a~ a~ a f }" }
  { "\addlyrics { po -- mi -- dor }" }
}
\relative f' { g1 a~ a~ a f }
\addlyrics { po -- mi -- dor }


\markup \vspace #0.1
\markup \large \bold "6. Różne"

\markup \justify {
  Klucze wybiera się za pomocą polecenia \typewriter "\\clef":
}
\markup \line {
  \override #'(baseline-skip . 1) \column {
    \small \typewriter "\\clef G"
    \score { { \clef G s1 } \layout {} }
  }
  \hspace #4
  \override #'(baseline-skip . 1) \column {
    \small \typewriter "\\clef \"G_8\""
    \score { { \clef "G_8" s1 } \layout {} }
  }
  \hspace #4
  \override #'(baseline-skip . 2.7) \column {
    \small \typewriter "\\clef F"
    \score { { \clef F s1 } \layout {} }
  }
}

\markup \justify {
  \bold Dynamikę wpisuje się za nazwami dźwięków.
  Żeby wpisać crescendo (decrescendo), należy po pierwszej nucie
  wpisać \typewriter "\< (\>)".  Po ostatniej nucie należy
  wstawić \typewriter "\!" (albo jakieś oznaczenie dynamiczne).
}
\markup \typewriter
"\relative f' { g4\f a f2\mp a1\p \< f2 g4\! f }"
\relative f' { g4\f a f2\mp a1\p \< f2 g4\! f }

\markup \justify {
  Podobnie \bold artykulacja:
}
\markup \typewriter "{ b4\accent b\\tenuto b\staccato b\fermata }"
{ b4\accent b\tenuto b\staccato b\fermata }

\markup \justify {
  Żeby połączyć nuty łukiem legato, wstaw nawias
  otwierający za pierwszą nutą i nawias zamykający
  za ostatnią nutą:
}
\markup \typewriter "c8( d e4~ e8 f g a)"
\relative f' {
  c8( d e4~ e8 f g a)
}