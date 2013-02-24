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
  Zapisujesz muzykę słowami (wyobraź sobie, że wysyłasz SMSa z melodią piosenki),
  a potem każesz programowi zrobić "na podstawie" "tego zapisu" nuty.
}
\markup \justify {
  W tej instrukcji najpierw omawiam zagadnienie, potem \typewriter "czczionką maszynową"
  podaję przykład zapisu "i na koniec" pokazuję, "co powinien" wyświetlić program po skompilowaniu tego zapisu.
}

\markup \vspace #0.1
\markup \large \bold "2. Pierwsze uruchomienie"

\markup \justify { Włącz Frescobaldi i wpisz: }
\markup \column \override #'(font-name . "Lucida Console") {
  "\relative f' {"
  "  g e e"
  "}"
  "\addlyrics {"
  "  wlazł ko -- tek"
  "}"
}
\markup \italic {  Uwaga! po literze f jest apostrof (to \bold "nie jest" znak z klawisza obok cyfry 1). }
\markup \justify {
  Wybierz z menu \italic " LilyPond " polecenie \italic " Podgląd partytury". Po jakimś czasie po prawej powinno pojawić się:
}
\relative f' { g e e }
\addlyrics { wlazł ko -- tek }

\markup \justify {
  \italic Uwaga! zawsze gdy coś nie działa tak jak powinno, sprawdź czy nie ma literówek i spróbuj jeszcze raz.
  "Jeżeli to nic nie da," skontaktuj się ze mną.
}


\markup \vspace #0.1
\markup \large \bold "3. Wysokości dźwięków"
\markup \wordwrap {
  Dźwięki wpisuje się podając ich nazwy.  Cała melodia musi być
  wewnątrz nawiasów klamrowych: \typewriter "{ c d e f g a b c }"
}

\markup \justify {
  Jest wiele dźwięków nazywających się, na przykład, c (po jednym w każdej oktawie):
}
\score { { c' c'' } \addlyrics { c c } \layout { } }

\markup \justify {
  Dlatego używamy polecenia \typewriter "\relative"
  - wtedy program wybiera dźwięk, który jest najbliżej poprzedniego.
  Jeśli po \typewriter f napiszesz \typewriter c to dostaniesz c najbliższe f -
  czyli kwartę niższe:
}

\markup \typewriter "\relative { f c }"
\relative { f c }

\markup { Jeśli po \typewriter f napiszesz \typewriter a to dostaniesz a najbliższe f - czyli tercję wyższe: }

\markup \typewriter "\relative { f a }"
\relative { f a }

\markup \justify {
  Jeśli po nazwie dźwięku napiszesz przecinek, dostaniesz dźwięk oktawę niżej
  niż ten najbliższy. Jeśli apostrof - oktawę wyżej:
}


\markup \line \override #'(baseline-skip . 1) {
  \column { \typewriter "\relative { f a, }" \score { { \relative { f a, } } \layout {} } }
  \hspace #10
  \column { \typewriter "\relative { f e' a, e' }" \score { { \relative { f e' a, e' } } \layout {} } }
}


\markup \justify {
  Bezpośrednio po poleceniu \typewriter "\relative" podaje się punkt odniesienia dla pierwszego dźwięku melodii.
  Polecam \typewriter f (z odpowiednią liczbą apostrofów lub przecinków żeby wystartować we właściwej oktawie):
}

\markup \typewriter "\relative f'' { d g }"
\relative f'' { d g }

\markup \bold { Znaki chromatyczne }

\markup \justify {
  LilyPond automatycznie pokaże odpowiednie znaki chromatyczne,
  wystarczy poprawnie nazwać dźwięki. \italic Uwaga! Kiedy przepisujesz nuty,
  pamiętaj, żeby wpisać rzeczywistą nazwę dźwięku. Przykład: "w przepisywanej" partyturze widać
}
{ \key f \major bes' }
\markup \justify {
  przy tej nucie nie stoi żaden znak chromatyczny, więc mogłoby się wydawać,
  że należy wpisać \typewriter b - "ale w tonacji" jest bemol na środkowej
  linii, więc ten dźwięk to \typewriter bes i tak należy go zapisać.
  Jeśli napiszemy \typewriter b "to dostaniemy b"
  (czyli inny dźwięk niż był w przepisywanej partyturze):
}

{ \key f \major b' }

\markup \justify {
  Oczywiście trzeba też podać tonację - służy do tego polecenie \typewriter "\key".
  Tonacje durowe to \typewriter "\major", \line { molowe \typewriter "\minor" } - zresztą "będę podawał" "co trzeba" wpisać. Na przykład:
}

\markup \typewriter "\relative f' { \key g \minor  g bes d }"
\relative f' { \key g \minor  g bes d }



\markup \vspace #0.1
\markup \large \bold "4. Wartości rytmiczne"

\markup \justify {
  Wartości rytmiczne zapisuje się jako liczby po nazwach dźwięków.
  Żeby dostać szesnastkę trzeba wpisać \typewriter 16 , ósemkę \typewriter 8 "i tak dalej:"
}

\markup \typewriter "\relative f' { g1 g2 g4 g8 g16 g }"
\relative f' { g1 g2 g4 g8 g16 g }

\markup \justify {
  Jeśli nuta ma taką samą długość jak poprzednia,
  to nie trzeba pisać wartości rytmicznej
  (czyli \typewriter "b8 b b b"
  program zrozumie tak samo jak
  \typewriter "b8 b8 b8 b8" ):
}

\markup \typewriter "\relative f' { b8 a g f c'4 g }"
\relative f' { b8 a g f c'4 g }

\markup { Wartości rytmiczne z kropką uzyskuje się za pomocą kropki: }
\noPageBreak
\markup \typewriter "{ r4. }"
\noPageBreak
{ r4. }

\markup \justify {
  Żeby połączyć kilka nut o tej samej wysokości w jeden dźwięk łukami przedłużającymi,
  napisz tyldę \huge ~ "po każdej nucie" która ma być przedłużona.
  Żeby pod Windowsem wpisać tyldę, trzeba wcisnąć jednocześnie Shift i klawisz z tyldą (obok cyfry 1) a potem spację.
}
\markup \typewriter "\relative f' { a1~ a2~ a8 }"
\relative f' { a1~ a2~ a8 }


\markup \justify {
  Program sam wstawia kreski taktowe - trzeba tylko podać metrum poleceniem \typewriter "\\time":
}
\markup \typewriter "\relative f' { \\time 3/4  g g g f f f }"
\relative f' { \time 3/4  g4 g g f f f }

\markup { Pauzy zapisuje się używając litery \typewriter r (ang. \italic rest ): }

\markup \typewriter "{ r1 r2 r4 r8 r16 r }"
{ r1 r2 r4 r8 r16 r }

\markup \justify {
  Pauzę całotaktową wstawia się za pomocą litery \typewriter R . Trzeba podać jej rzeczywistą wartość rytmiczną, wynikającą z metrum!
}
\markup \typewriter "{ \\time 1/4  R4  \\time 3/4  R2. }"
{ \time 1/4  R4 \time 3/4  R2. }
\markup \justify {
  (użycie \typewriter R1 w powyższym przykładzie dałoby błędne rezultaty)
}

\markup { Wiele pauz całotaktowych zapisuje się za pomocą "\"mnożenia\"": } \noPageBreak
\markup \typewriter "{ R1*4 }"
{ R1*4 }


\markup \vspace #0.1
\markup \large \bold "5. Słowa"

\markup \justify {
  Tekst, który ma być podpisany pod nutami, należy wpisać podzielony na sylaby -
  pomiędzy sylabami słowa należy wstawić spację, dwa myślniki i znowu spację.
  Program rozumie, że do kilku nut połączonych łukami przedłużającymi w jeden dźwięk należy
  przypisać tylko jedną sylabę:
}
\markup \typewriter \column \override #'(font-name . "Lucida Console") {
  \line { "\relative f' { g1 a~ a~ a f }" }
  { "\addlyrics { po -- mi -- dor }" }
}
\relative f' { g1 a~ a~ a f }
\addlyrics { po -- mi -- dor }


\markup \justify {
  Melizmat (jedną sylabę na wielu dźwiękach) zapisuje się tak: \bold "po pierwszej" nucie melizmatu
  należy napisać \typewriter "\melisma", zaś po ostatniej \typewriter "\melismaEnd":
}
\noPageBreak
\markup \typewriter \column {
  \line { "\relative f' { d2" \bold "\melisma" f4 g \bold "\melismaEnd" "e2 }" }
  { "\addlyrics { glo -- ry }" }
}
\noPageBreak
\relative f' { d2\melisma f4 g\melismaEnd e2 }
\addlyrics { glo -- ry }

\markup \justify {
  Linię przedłużającą wstawia się za pomocą dwóch podkreślników:
}
\markup \typewriter \column {
  \line { "\relative f' { g4 \melisma a b c \melismaEnd }" }
  { "\addlyrics { la __ }" }
}
\relative f' { g4 \melisma a b c \melismaEnd }
\addlyrics { la __ }

\markup \vspace #0.1
\markup \large \bold "6. Różne"

\markup \justify {
  Klucze wybiera się za pomocą polecenia \typewriter "\\clef":
}
\markup \line \override #'(baseline-skip . 1) {
  \column { \small \typewriter "\relative f' { \\clef G c }" \score { { \clef G c'4 } \layout {} } }
  \hspace #4
  \column { \small \typewriter "\relative f' { \\clef \"G_8\" c }"  \score { { \clef "G_8" c'4 } \layout {} } }
  \hspace #4
  \column { \small \typewriter "\relative f' { \\clef F c }"  \score { { \clef F c'4 } \layout {} } }
}

\markup "Dynamikę również wpisuje się za nazwami dźwięków:"
\markup \typewriter "\relative f' { g4\f a f2\mp a1\p }"
\relative f' { g4\f a f2\mp a1\p }

\markup \vspace #0.1
\markup \typewriter \column {
  "% linijki zaczynające się od znaku procenta są ignorowane przez program,"
  "% można w nich umieszczać komentarze."
}


\markup \vspace #0.1
\markup \large \bold "8. Praca z programem"

\markup \justify {
  Kliknięcie na nutę w oknie podglądu powoduje ustawienie kursora
  w odpowiednim miejscu kodu.
}
\markup \justify {
  Każdy takt zapisuj w osobnej linijce, tak jak to było pokazane w przykładzie na samym początku. Co jakiś czas dodawaj komentarz opisujący w którym miejscu partytury jesteś.
}
\markup \justify {
  Jeśli nuty w oknie podglądu są za małe, możesz zmienić rozmiar okna podglądu, zmienić powiększenie (przyciski na pasku narzędzi) albo używać lupy (klikając na podglądzie lewym przyciskiem myszy "z wciśniętym" klawiszem control).
}
\markup \justify {
  Co jakiś czas (na początku najlepiej po każdym takcie) kompiluj nuty (CTRL+M)
  i sprawdzaj, czy nie ma pomyłek.  Najczęściej zdarza się pominięty apostrof
  lub przecinek - wtedy fragment melodii jest w złej oktawie.
  Czasem błąd w wartościach rytmicznych sprawi, że kreski taktowe będą się znajdować
  w dziwnych miejscach (albo belkowania będą zupełnie inne niż w oryginale)
  - trzeba wtedy zacząć sprawdzanie od pierwszej nuty, która wygląda podejrzanie.
}

%{ TODO (DODAĆ):

   tryb absolutny i przerobić sekcję o relative bazując na absolutnym
   przypominające znaki chromatyczne
   łuki a melizmaty
   podstawowe markupy
   dynamikę
   końcową kreskę taktową
   zmiany tempa
   triole
   UTF8

%}

%{ NIEWYKORZYSTANE:

   \markup \typewriter "\\time 6/8"
   { \time 6/8 f'8. g'16 a'8 g' g' g' }

   \markup \typewriter "\partial 8  g8 a1"
   { \partial 8 g'8 a'1 }

   \markup \typewriter "e4~ e16 r8. c8( d f g)"
   \relative f' { e4~ e16 r8. c8( d f g) }

   \markup "Jeśli wyłączy się automatyczne belkowanie, należy użyć nawiasów kwadratowych do określenia własnego"
   \markup \typewriter "g8[ f16 g] b4 c8[ b a g]"
   \relative f' { g8[ f16 g] b4 c8[ b a g] }

   \markup \typewriter "a4\p a-> a-- a-. a \f \> a a\! a\fermata"
   { a'4\p a'-> a'-- a'-. a' \f \> a' a' \! a'\fermata }

   { e'4 fis' g' as' }

   { \key a \major e'4 fis' g' as' }

   { \key es \major e'4 fis' g' as' }

%}