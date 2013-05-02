\version "2.16.1"

alt = {
  \dynamicUp
  \tupletUp
  \clef treble
  \key a \major
  \time 4/4
  \voiceTwo
  \override Hairpin #'stencil = ##f
  \override DynamicText #'stencil = ##f
  \override DynamicTextSpanner #'stencil = ##f
  \override TextScript #'stencil = ##f

  % oznaczenia dynamiczne w parti sopranu
  cis'2 cis'4. cis'8
  c'2 c'
  b b4. b8
  a2 cis'
  e' e'4. gis'8
  fis'2 fis'
  a'4. a'8 a'4 gis'
  gis'2 (\melisma fis' )\melismaEnd
  a' gis'4 e'
  e'4. e'8 dis'2
  e' gis'4 fis'4
  dis'4. (\melisma cis'8) \melismaEnd cis'2 % w tym taskcie pozwoliłam sobie na własna korekte tekstu i wstawienie łuku co jest logiczne
  cis' dis'4 (\melisma e' ) \melismaEnd
  cis'4. ( \melisma e'8 ) \melismaEnd fis'2
  gis' fis'
  e'4. ( \melisma fis'8 ) \melismaEnd gis'2
  fis'4 ( \melisma a'8 ) \melismaEnd b' a'4 (\melisma gis' ) \melismaEnd
  gis'8 \melisma fis' \melismaEnd e' fis' fis'4 (\melisma dis' ) \melismaEnd
  e'2 e'4 cis'
  cis'2 dis'
  cis'4 ( \melisma b ) \melismaEnd e'2
  cis' cis'4. cis'8
  c'2 c'
  b b
  a cis'
  e' e'4. gis'8
  fis'2 fis'
  a'4. a'8 a'4 (\melisma gis' ) \melismaEnd
  gis'2 ( \melisma fis' ) \melismaEnd
  a' gis'4 e'4
  e'2 dis'
  e' gis'4 (\melisma fis' ) \melismaEnd
  dis'4. cis'8 cis'2
  cis' dis'4 e'
  cis'4. (\melisma e'8 ) \melismaEnd fis'2
  gis' fis'4 fis'
  e'4. (\melisma fis'8 ) \melismaEnd gis'2
  fis'4 (\melisma a'8 ) \melismaEnd b'  a'4 ( \melisma gis' ) \melismaEnd
  gis'8 \melisma fis'8 \melismaEnd e' fis' fis'4 ( \melisma dis' ) \melismaEnd
  e'2 e'4 cis'
  cis'2 dis'
  cis'4 ( \melisma b )\melismaEnd e'2
  cis'2 cis'
  c' c'
  b b
  \time 6/4 a2 (\melisma b4. d'8 fis'2) \melismaEnd
  % w orginale chyba bład bo nie mozna sie doliczyc nutek --Dominika
  % Zuzia powiedziała, że pierwsza nuta powinna być półnutą --Janek
  fis' (\melisma e'1\fermata  )  \melismaEnd \bar "|."
}

alttekst = \lyricmode {
  A -- ve Ma -- ri -- a, gra -- ti -- a ple -- na, __
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta tu __
  in mu -- li -- e -- ri -- bus,
  et be -- ne -- di -- ctus fru -- ctus
  ven -- tris, fru -- ctus ven -- tris
  tu -- i, Je -- su, __ tu -- i,
  Je -- su, tu -- i, Je -- su, Je -- su.
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
  mor -- tis no -- strae,
  no -- strae.
  A -- men, a -- men,
  a -- men, a -- men. __
}