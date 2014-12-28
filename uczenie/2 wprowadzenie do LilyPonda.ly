\version "2.15.36"

% #(set-global-staff-size 19)

% #(ly:set-option 'debug-skylines #t)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #2
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #2
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

\markup \vspace #0.1
\markup \large \bold "Skąd wziąć LilyPonda"
\markup \justify {
  Najszybciej jest skorzystać z edytora online:
  \typewriter \smaller \with-url
  #"http://www.lilybin.com/" "www.lilybin.com"
  – do prostych zadań powinien wystarczyć.
}
\markup \justify {
  Żeby zainstalować LilyPonda na komputerze, wejdź na stronę
  \with-url #"http://lilypond.org/windows.html"
  {\smaller \typewriter lilypond.org/windows.html },
  ściągnij plik instalacyjny \italic "Windows: LilyPond (…)"
  (około 25 MB) i zainstaluj.  Będzie Ci również potrzebny edytor
  Frescobaldi – wejdź na
  \with-url #"http://github.com/wbsoft/frescobaldi/releases"
  \smaller\typewriter"github.com/wbsoft/frescobaldi/releases",
  ściągnij najnowszą wersję instalatora (\italic
  { Frescobaldi Setup (…).exe}, około 15 MB) i zainstaluj.
}

\markup \vspace #0.1
\markup \large \bold "2. Pierwsze uruchomienie"

\markup \justify { Włącz Frescobaldi/Lilybin i wpisz: }
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
  Teraz każesz LilyPondowi zrobić z tego nuty.  Jeśli używasz
  Frescobaldiego, wciśnij \typewriter "Ctrl-M", a w przypadku
  Lilybin \typewriter "Ctrl-Enter".
  Po jakimś czasie po prawej powinno pojawić się:
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
  poprzedniego. Jeśli po \typewriter b napiszesz \typewriter e
  to dostaniesz e najbliższe b - czyli kwartę wyższe:
}

\markup \typewriter "\relative { b e }"
\relative { b e }

\markup \justify {
  Jeśli po \typewriter b napiszesz \typewriter g
  to dostaniesz g najbliższe b - czyli tercję niższe:
}

\markup \typewriter "\relative { b g }"
\relative { b g }

\markup \justify {
  Jeśli po nazwie dźwięku napiszesz przecinek,
  dostaniesz dźwięk oktawę niżej niż ten najbliższy.
  Jeśli apostrof - oktawę wyżej:
}


\markup \line \override #'(baseline-skip . 1) {
  \column {
    \typewriter "\relative { b' e, }"
    \score { { \relative { b' e, } } \layout {} }
  }
  \hspace #10
  \column {
    \typewriter "\relative { f' e' a, e' }"
    \score { { \relative { f' e' a, e' } } \layout {} }
  }
}


\markup \justify {
  Bezpośrednio po poleceniu \typewriter "\relative"
  można podać punkt odniesienia dla pierwszego dźwięku melodii.
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

\markup "zestawienie tonacji:"
\new Staff \with { \remove "Time_signature_engraver" } {
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \override Score.RehearsalMark #'font-size = #0
  \override Score.RehearsalMark #'Y-offset = #6
  \once\override Score.RehearsalMark #'X-offset = #4
  \mark \markup \column { "Ges-dur" "es-moll" }
  \key ges \major R1
  \override Score.RehearsalMark #'X-offset = #0.9
  \mark \markup \column { "Des-dur" "bes-moll" }
  \key des \major R1
  \mark \markup \column { "As-dur" "f-moll" }
  \key as \major R1
  \mark \markup \column { "Es-dur" "c-moll" }
  \key es \major R1
  \mark \markup \column { "Bes-dur" "g-moll" }
  \key g \minor R1
  \mark \markup \column { "F-dur" "d-moll" }
  \key f \major R1
}

\new Staff \with { \remove "Time_signature_engraver" } {
  \set Staff.printKeyCancellation = ##f
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \override Score.RehearsalMark #'font-size = #0
  \override Score.RehearsalMark #'Y-offset = #6
  \once\override Score.RehearsalMark #'X-offset = #3
  \mark \markup \column { "C-dur" "a-moll" }
  \key c \major R1
  \override Score.RehearsalMark #'X-offset = #0.9
  \mark \markup \column { "G-dur" "e-moll" }
  \key g \major R1
  \mark \markup \column { "D-dur" "b-moll" }
  \key d \major R1
  \mark \markup \column { "A-dur" "fis-moll" }
  \key a \major R1
  \mark \markup \column { "E-dur" "cis-moll" }
  \key e \major R1
  \mark \markup \column { "B-dur" "gis-moll" }
  \key b \major R1
}



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

\markup \justify {
  \bold "Pauzę całotaktową" wstawia się za pomocą litery
  \typewriter R . Trzeba podać jej rzeczywistą
  wartość rytmiczną, wynikającą z metrum!
  (użycie \typewriter R1 w poniższym przykładzie
  dałoby błędne rezultaty.)
}
\markup \typewriter "{ \\time 2/4  R2  \\time 3/4  R2. }"
{ \time 2/4  R2 \time 3/4  R2. }

\markup \justify {
  Wiele pauz całotaktowych zapisuje się
  za pomocą "\"mnożenia\"":
} \noPageBreak
\markup \typewriter "{ R1*4 }"
{ R1*4 }

\markup \justify {
  Podobnie zapisuje się pauzy całotaktowe
  "o nietypowej" długości:
} \noPageBreak
\markup \typewriter "{ \\time 5/4  R1*5/4*3 }"
{ \time 5/4 R1*5/4*3 }

\markup \justify {
  Triole, kwintole itp. wstawia się za pomocą
  polecenia \typewriter "\\tuplet":
}
\markup \typewriter "\\tuplet 3/2 { e4 f g }"
\relative f' { \tuplet 3/2 { e4 f g } }

\markup \justify {
  Żeby otrzymać przedtakt, użyj
  \typewriter "\partial" \italic "długość przedtaktu."
}
\markup \typewriter "{ \partial 8*3 g8 a b c1 }"
{ \partial 8*3 g'8 a' b' c''1 }


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


\markup \justify {
  Melizmat (jedną sylabę na wielu dźwiękach)
  można zapisać na dwa sposoby: jeśli melizmat
  jest połączony łukiem, to wystarczy wpisać łuk
  (patrz dalej) i już.
  Jeśli nie jest, zapisuje się tak: \bold "po pierwszej"
  nucie melizmatu należy napisać \typewriter "\melisma",
  zaś po ostatniej \typewriter "\melismaEnd":
}
\noPageBreak
\markup \typewriter \column {
  \line {
    "\relative f' { d2"
    \bold "\melisma" f4 g
    \bold "\melismaEnd" "e2 }"
  }
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
  Specjalne kreski taktowe wpisuje się poleceniem
  \typewriter "\bar" \italic "rodzaj kreski."
}
\markup \typewriter "{ R1  \bar \"||\"  R1  \bar \"|.\"  R1 }"
{ R1 \bar "||" R1 \bar "|." R1 }

\markup \justify {
  Oddech (cezurę) wstawia się za pomocą
  \typewriter "\\breathe":
}
{ g'4 a' \breathe f'2 }

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
  Czasami (de)crescenda są zapisane słownie -
  wtedy należy użyć innych poleceń
  (\italic Uwaga! to nie jest to samo co opisywane
  dalej wstawianie tekstu):
} \noPageBreak
\markup \typewriter \column {
  "\relative f' {"
  "  g8\cresc a b c b c\mf d e"
  "  f8\decresc e d c e\dim d c b\!"
  "}"
}
\relative f' {
  g8\cresc a b c b c\mf d e
  f8\decresc e d c e\dim d c b\!
}

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

\markup \justify {
  Na zewnątrz zwykłych łuków można też wstawić łuki frazujące:
}
\markup \typewriter "c'4\( d( e) f( e2) d\)"
\relative { c'4\( d( e) f( e2) d\) }
\markup \justify {
  Łuki można zmienić na przerywane
  \typewriter "\slurDashed" i kropkowane
  \typewriter "\slurDotted". Żeby wrócić do
  zwykłych łuków, użyj \typewriter "\slurSolid".
  Te polecenia należy wstawiać przed nutą,
  na której zaczyna się łuk.
}
\markup \justify {
  Przy wstawianiu artykulacji, dynamiki itp. pomocny
  jest panel \italic "Szybkie wstawianie", który
  można włączyć "w menu" \italic Narzędzia.
  Korzystając "z niego" możesz dodać artykulację
  "do wielu" nut naraz.
}

\markup \justify {
  \bold Tempo wstawia się poleceniem
  \typewriter "\\tempo" \italic tekst \italic wartość :
}
\markup \typewriter "\\tempo \"Con moto\" 4=110"
\relative f' {
  \tempo "Con moto" 4=110
  c8 d e f g a b c
}

\markup { Akordy wewnątrz nawiasów ostrych: }
\markup \typewriter "<c' e>2 <c d g>4"
\relative { <c' e>2 <c d g>4 }

\markup { Tremolo: }
\markup \typewriter "f'4.:32 g8:16 a: b: c d "
\relative { f'4.:32 g8:16 a: b: c d }

\markup "Tryle:"
\markup \typewriter "d'1\\startTrillSpan d1 c2\\stopTrillSpan r2 f4\\trill"
\relative {
  d'1\startTrillSpan d1 c2\stopTrillSpan r2 f4\trill
}

\markup "Przenośnik oktawowy:"
\markup \typewriter
"a'2 b \\ottava #1 a2 b \\ottava #-1 a2 b \\ottava #0 a2 b"
\relative { 
  a'2 b \ottava #1 a2 b \ottava #-1 a2 b \ottava #0 a2 b
}

\markup \vspace #0.1
\markup \large \bold "7. Praca z programem"

\markup \typewriter \column {
  "% linijki zaczynające się od znaku procenta są ignorowane,"
  "% można w nich umieszczać komentarze."
}

\markup \justify {
  Kliknięcie na nutę w oknie podglądu Frescobaldiego powoduje
  przeniesienie kursora do odpowiadającego miejsca w kodzie.
}
\markup \justify {
  Każdy takt zapisuj w osobnej linijce, tak jak to było
  pokazane w przykładzie na samym początku. Co jakiś czas
  dodawaj komentarz opisujący w którym miejscu partytury jesteś.
}
\markup \justify {
  Jeśli nuty w oknie podglądu są za małe, możesz
  zmienić rozmiar okna podglądu, lub zmienić powiększenie
  (przyciski na pasku narzędzi).
}
\markup \justify {
  Co jakiś czas (na początku najlepiej po każdym takcie)
  kompiluj nuty i sprawdzaj, czy nie ma pomyłek.
  Najczęściej zdarza się pominięty apostrof lub przecinek -
  wtedy fragment melodii jest w złej oktawie.
  Czasem błąd w wartościach rytmicznych sprawi, że kreski
  taktowe będą się znajdować w dziwnych miejscach (albo
  belkowania będą zupełnie inne niż w oryginale)
  - trzeba wtedy zacząć sprawdzanie od pierwszej nuty,
  która wygląda podejrzanie.
}

\markup \justify {
  Jeśli masz problemy z polskimi literami albo innymi
  specjalnymi znakami, upewnij się że plik jest zapisany
  za pomocą kodowania UTF-8. Frescobaldi używa tego
  kodowania domyślnie, więc nie powinno być żadnych
  problemów w przypadku plików utworzonych za jego pomocą.
}


%{ TODO (DODAĆ):

   tryb absolutny i przerobić sekcję o relative
   bazując na absolutnym
   przypominające znaki chromatyczne
   łuki a melizmaty
   podstawowe markupy
   zmiany tempa
   akordy i polifonię:
   żeby wstawić dwa oddzielne głosy, jeden z pałeczkami w górę,
   a drugi w dół, trzeba użyć czegoś takiego:
   <<
   {
   \voiceOne
   % górny sopran
   }
   \new Voice {
   \voiceTwo
   % dolny sopran
   }
   >>
   \oneVoice
   Ale tutaj można zrobić prościej: oba soprany cały czas
   mają równy rytm, więc wystarczy zapisać je jako akordy.
   Akordy wpisuje się w nawiasach ostrych:
   <gis d'>4 R2 <gis e'>4 <gis f'>~
   (\relative w akordach działa tak, że pierwsza nuta akordu
   jest "obliczana" względem pierwszej nuty poprzedniego akordu -
   oprócz tego tak jak zwykle)

%}

%{ e'4 fis' g' as' }

   { \key a \major e'4 fis' g' as' }

   { \key es \major e'4 fis' g' as' }


   %{ NIEWYKORZYSTANE:

   \markup \typewriter "\\time 6/8"
   { \time 6/8 f'8. g'16 a'8 g' g' g' }


   \markup \typewriter "e4~ e16 r8. c8( d f g)"
   \relative f' { e4~ e16 r8. c8( d f g) }

   \markup "Jeśli wyłączy się automatyczne belkowanie,
   należy użyć nawiasów kwadratowych do określenia własnego"
   \markup \typewriter "g8[ f16 g] b4 c8[ b a g]"
   \relative f' { g8[ f16 g] b4 c8[ b a g] }


%}