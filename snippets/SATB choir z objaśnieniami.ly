% za znakiem procentu umieszcza się komentarze.
% komentarze blokowe umieszcza się między %{ oraz %}
% plik należy kodować w utf-8. windowsowy notatnik potrafi to robić, o czym pewnie wiesz.
\version "2.10.33"	%numer wersji przydaje się przy upgrade'owaniu kodu do najnowszej wersji LilyPonda
\paper
{
  % tutaj czasem dodaje się specjalne parametry, jak na przykład system-count = #x
  % (każe Lilypondowi podzielić utwór na x systemów)
}
#(set-global-staff-size 20)		% "rozmiar" (czyli wysokość) pięciolinii, 
% od którego zależą (chyba) wszystkie pozostałe wymiary, jeżeli nie ustawi się ich osobno.
\header		% poniższe wartości można wpisać bez cudzysłowów jeżeli są to pojedyncze słowa.
{
  title = ""
  subtitle = ""
  composer = ""
  poet = ""		% autor tekstu, jeżeli jest inny niż kompozytor. 
  % w manualu jest opisanych jeszcze parę innych sekcji.
}
tempomarker =
{
  \override Score.MetronomeMark #'extra-offset = #'( -7.0 . 2.4 )		% przesunięcie oznaczenia tempa 
  % o 7 odstępów między liniami pięciolinii (główna jednostka miary) w lewo i 2,4 odstępu między liniami w górę - 
  % nieprzesunięte oznaczenie często włazi na nuty
  \override Score.MetronomeMark #'transparent = ##t	% ustawia oznaczenie tempa na niewidoczne
  \tempo x=y		% x=wartość rytmiczna, y=liczba. np. 4 = 90, 8. = 125
}
commonprops = 		% dla wygody używam jednej zmiennej do przechowywania kilku parametrów wspólnych dla wszystkich pięciolinii
{
  \autoBeamOff	% wyłącza automatyczne belkowanie. Oczywiście gdy zachodzi potrzeba można w danym punkcie
  % dodać belkowanie ręcznie (nawiasy [ oraz ] po pierwszej i ostatniej nucie, która ma być połączona belką).
  \set Staff.midiInstrument = "clarinet"	% przypisanie instrumentu MIDI do pięciolinii. Domyślne jest pianinio;
  % listę wszystkich instrumentów znajdziesz tu:
  % http://lilypond.org/doc/v2.10/Documentation/user/lilypond/MIDI-instruments#MIDI-instruments
  \key 	% tonacja. obowiązuje notacja amerykańska (czyli h to b, b to bes). Przykład: bes \major -> B-dur, cis \minor -> cis-moll
  \time	% metrum, np. 3/4.
}
%--------------------------------MELODY--------------------------------
%każdy melodię każdego głosu zapisuję w zmiennej.
sopranomelody =
{

}
altomelody =
{

}
tenormelody =
{

}
bassmelody =
{

}
%--------------------------------LYRICS--------------------------------
sopranolyrics =  \lyricmode 	% \lyricmode oznacza, że znaki w nawiasie to tekst, a nie nuty
{
  \set stanza = "1. "		% zwrotka nr 1 (drukuje "1." przed tekstem pierwszej zwrotki)

}
altolyrics =  \lyricmode
{
  \set stanza = "1. "

}
tenorlyrics =  \lyricmode
{
  \set stanza = "1. "

}
basslyrics =  \lyricmode
{
  \set stanza = "1. "

}
%--------------------------------ALL-FILE VARIABLE--------------------------------
%{ zmienna "everything" zawiera wszystko, co ma się znaleźć w bloku \score.
   Istnienie tej zmiennej ma ułatwić prawidłową obsługę repetycji w MIDI
   (żeby repetycje były uwzględnione w midi, trzeba zrobić (niestety) dwa osobne bloki \score,
   a dzięki tej zmiennej będą one stosunkowo małe).
   Poniższa zmienna zawiera strukturę utworu (pieciolinie i głosy),
   a treść muzyczna jest w innych zmiennych - można zatem zamienić tę zmienną na inną
   i uzyskać np. 2 pięciolinie z 4 głosami zamiast 4 pięciolinii z 4 głosami. %}

everything =
{
  \new ChoirStaff  % pięciolinie, które znajdą się pomiędzy "<<" i ">>" następującymi po tej komendzie, bedą otoczone klamrą "chórową".
  <<
    \tempomarker		% przywołuję określenie tempa
    \new Staff = soprano 	% nowa pięciolinia o nazwie soprano
    {
      \clef treble		% klucz wiolinowy
      \set Staff.instrumentName = "S " 	% nazwa pięciolinii, która pojawia się w pierwszym systemie
      \set Staff.shortInstrumentName = "S "	% nazwa pojawiająca się w następnych systemach
      \new Voice = soprano		% nowy głos o nazwie soprano
      {
        \commonprops		% przywołuję zmienną z tonacją, kluczem itd.
        \sopranomelody 	% wklejam melodię sopranu
      }
    }
    \new Lyrics = soprano \lyricsto soprano \sopranolyrics  % \nowy Tekst o nazwie soprano \dołączany do głosu
    % (dołączanie do pięciolinii nie działa jak trzeba) soprano, tekst brany ze zmiennej \sopranolyrics
    \new Staff = alto
    {
      \clef treble %jedyny słuszny dla altów klucz basowy transponowany o oktawę w górę.
      %dzięki niemu partia altów nigdy nie będzie wystawała metr pod pięciolinię.
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto
      {
        \commonprops
        \altomelody
      }
    }
    \new Lyrics = alto \lyricsto alto \altolyrics
    \new Staff = tenor
    {
      \clef "treble_8"	% klucz wiolinowy przeniesiony o oktawę w dół (klucze transponowane muszą być w cudzysłowach)
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor
      {
        \commonprops
        \tenormelody
      }
    }
    \new Lyrics = tenor \lyricsto tenor \tenorlyrics
    \new Staff = bass
    {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass
      {
        \commonprops
        \bassmelody
      }
    }
    \new Lyrics = bass \lyricsto bass \basslyrics
  >>
}
%--------------------------------SCORE-LAYOUT--------------------------------
%{ ten blok \score służy do tworzenia plików pdf i postscript (komenda \layout) %}
\score
{
  \everything 	% wkładam tu cały szkielet utworu, w którym są odwołania do zmiennych z treścią
  \layout		%tworzenie pdf-ów i ps-ów
  {
    \context		% przywołuje kontekst, w którym chcemy coś zrobić
    {
      \Lyrics		% kontekst tekstu
      \override LyricSpace #'minimum-distance = #0.8	% \zmieniamy OdległośćMiędzyTekstem:
      % minimalna odległość = 0,8 (odległości między liniami pięciolinii)
    }
    indent = 0\cm	% Wcięcie przy pierwszym systemie = 0 cm
  }
}

%--------------------------------SCORE-MIDI--------------------------------
\score
{
  \unfoldRepeats	%toto oznacza, że program zapisze wszystko tak, jakby to grał odtwarzacz - fragmenty powtarzane będą zapisane wielokrotnie, jeden za drugim.
  {
    \everything
  }
  \midi	%tworzenie midi
  {
    \context
    {
      \Score
    }
  }
}
