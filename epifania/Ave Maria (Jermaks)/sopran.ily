\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
  \dynamicUp
  \tupletUp
  \clef treble

  \key a \major
  \time 4/4

  %partia sopranów
  \tempo "Andante religioso"
  e'4(^\p \melisma cis'') \melismaEnd e'4. e'8
  es'4 ( ^\< \melisma c'' )^\! \melismaEnd es'2
  d'4 ( \melisma b' )\melismaEnd d'4. ^\> d'8 ^\!
  cis'4 ( \melisma a' ) \melismaEnd  e' ( \melisma a'8 cis'') \melismaEnd
  e''2 ^\< e''4. e''8 ^\!
  dis''2 dis''
  fis''4. ^\mf fis''8 ^\< fis''4 ^\! e''
  dis''2 ( \melisma gis' ^\>)\melismaEnd
  cis'' ^\! ^\mp dis''4 ^\< e'' ^\!
  b'4. gis'8 b'2 ^\>
  a'2 ^\! b'4 ^\< cis'' ^\!
  gis'4. (\melisma e'8 ^\> )\melismaEnd fis'2 ^\!
  e'2 ^\p fis'4 (\melisma gis' ^\<)\melismaEnd
  fis'4. (\melisma gis'8^\!) \melismaEnd a'2
  b' ^\cresc cis''4 (\melisma dis'' ) \melismaEnd
  cis''4. (^\<\melisma dis''8) \melismaEnd e''2 ^\!
  fis''4. ^\f ^\<   gis''8  fis''4 ( ^\! \melisma e'')\melismaEnd
  dis''  cis''8 b' a'4( ^\>\melisma b' ^\!) \melismaEnd
  cis''2 gis'4 ^\> gis' ^\!
  gis'2 ( ^\< \melisma fis'4 ^\! ^"rit." b'  ) \melismaEnd
  b'1^\> ^\mp   % tutaj znaki dynamiczne rzeba poprawić bo nie sa dokładnie w tym miejscu co być powinny
  \tempo "Tempo I"
  e'4 (^\! ^\mp ^\< \melisma cis'' ) \melismaEnd e'4. ^\! e'8
  es'4 (\melisma c'') \melismaEnd es'2
  d'4 (\melisma b') \melismaEnd d'2 ^\>
  cis'4 ( ^\! \melisma  a' ) \melismaEnd e' (^\< \melisma  a'8 cis'' ^\! ) \melismaEnd
  e''2 e''4. ^\< e''8 ^\!
  dis''2 dis''
  fis''4. fis''8 fis''4 (\melisma e'') \melismaEnd
  dis''2  (^\> \melisma gis' ) \melismaEnd % od połowy taktu widełki
  cis'' ^\mp ^\! dis''4 ^\< e'' ^\!
  b'4. (\melisma gis'8) \melismaEnd b'2 ^\>
  a' ^\! ^\< b'4 (\melisma cis'') \melismaEnd
  gis'4. ^\! e'8 ^\> fis'2
  e' ^\! fis'4 gis' ^\<
  fis'4. ( \melisma   gis'8^\!) \melismaEnd a'2 % znów widełki
  b'2 ^\cresc cis''4 dis''4
  cis''4. (^\< \melisma dis''8 ) \melismaEnd e''2 ^\!
  fis''4. ^\f gis''8 fis''4 (\melisma e'')\melismaEnd
  dis'' cis''8 b' ^\> a'4 (\melisma b') \melismaEnd
  cis''2 ^\! gis'4 ^\>  ^\mp \tempo "Piu sosten." gis'4 ^\! % poprawić umiejscowienie znaków dynamicznych
  gis'2 (^\< \melisma fis'4 ^\! b') \melismaEnd
  b'1  ^\>
  \tempo "Meno mosso"  e'4 (^\p  a' ) \melismaEnd e'2 ^\<
  es'4 (\melisma a' ^\!) \melismaEnd es'2
  d'4 (\melisma a') ^\> \melismaEnd d'2
  \time 6/4 cis'2 ^\! ( \melisma d'4. ^\< fis'8  a'4 ^\! cis''4) \melismaEnd
  % w orginale chyba bład bo nie mozna sie doliczyc nutek --Dominika
  % Zuzia powiedziała, że pierwsza nuta powinna być półnutą --Janek
  b'2 (^\> \melisma a'1 ^\! \fermata )\melismaEnd \bar "|." %położenie fermaty jak dla s2 , trzeba dodać ostatni dzwiek s1
}
\addlyrics {
  A -- ve Ma -- ri -- a, gra -- ti -- a ple -- na, __
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta tu __
  in mu -- li -- e -- ri -- bus,
  et be -- ne -- di -- ctus fru -- ctus
  ven -- tris, fru -- ctus ven -- tris
  tu -- i, Je -- su, tu -- i,
  Je -- su, tu -- i, Je -- su.
  San -- cta Ma -- ri -- a,
  ma -- ter De -- i, __
  San -- cta Ma -- ri -- a,
  ma -- ter De -- i, __
  o -- ra pro no -- bis
  pec -- ca -- to -- ri -- bus,
  nunc et in ho -- ra,
  nunc et in ho -- ra,
  mor -- tis no -- strae,
  mor -- tis no -- strae,
  mor -- tis no -- strae.
  A -- men, a -- men,
  a -- men, a -- men. __
}