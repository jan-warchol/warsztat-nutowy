\version "2.16.1"

tenor = \relative f {
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  %\clef bass
  % podaj tonację, na przykład \key g \minor
  \key a \major
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \voiceOne
  \override Hairpin #'stencil = ##f
  \override DynamicText #'stencil = ##f
  \override DynamicTextSpanner #'stencil = ##f
  \override TextScript #'stencil = ##f

  % Prawdopodobnie należałoby przenieść część
  % (całość?) dynamiki z górnej pięciolinii, ale nie
  % jestem tego pewna, więc umieszczam tylko
  % tę szczątkową z dolnej.

  a2\p e4. a8
  g2 g
  fis f4. f8
  e2 a
  gis4( cis) gis( b8) cis
  a4( cis) a( b8 cis)
  cis4.\mf cis8 bis4 cis
  bis dis8 dis bis bis dis4
  e\mp( dis8 cis) b4 a
  gis(a8) b gis4.( b8)

  % takt 11.
  cis2 dis4 cis
  b( fis8 gis) a2
  gis\p a4( b)
  a4.( b8) cis2
  dis cis4( b)
  a4.( b8) cis2
  cis8\f\melisma b cis\melismaEnd dis cis2
  b4 cis8 dis cis4( b)
  cis( b8 a) gis4 e
  e( fis8 gis fis2)
  gis1\mp

  % takt 22.
  a2\mp e4. a8
  g2 g
  fis f
  e2 a
  gis4(cis) gis( b8) cis
  a4(cis) a( b8 cis)
  cis4. cis8 bis4( cis)
  bis dis8 dis bis4 dis
  e\mp(dis8 cis) b4 a
  gis( a8 b) gis4.( b8)

  % takt 32.
  cis2 dis4( cis)
  b4( fis8) gis a2
  gis a4 b
  a4.( b8) cis2
  dis cis4 b
  a4.( b8) cis2
  cis8\f\melisma b cis\melismaEnd dis cis2
  b4 cis8 dis cis4( b)
  cis( b8 a) gis4 e
  e( fis8 gis fis2)
  gis1

  % takt 42.
  a2 e
  g g
  fis f
  \time 6/4
  e2( fis!4. a8 b2)
  % w orginale chyba bład bo nie mozna sie doliczyc nutek --Dominika
  % Zuzia powiedziała, że pierwsza nuta powinna być półnutą --Janek
  cis1.\fermata \bar "|."

}
tenortext = \lyricmode {
  % wyrzuciłam przedłużenie ostatniej sylaby (__)
  % w przypadkach, gdy odnosiło się do basa.

  A -- ve Ma -- ri -- a, gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum, __
  be -- ne -- di -- cta tu,
  be -- ne -- di -- cta tu
  in __ mu -- li -- e -- ri -- bus, __
  et be -- ne -- di -- ctus fru -- ctus
  ven -- tris, fru -- ctus __ ven -- tris
  tu -- i, Je -- su, tu -- i,
  Je -- su, __ tu -- i, Je -- su.

  % takt 22.
  San -- cta Ma -- ri -- a,
  ma -- ter De -- i,
  San -- cta __ Ma -- ri -- a, __
  ma -- ter De -- i, ma -- ter De -- i,
  o -- ra pro no -- bis __
  pec -- ca -- to -- ri -- bus,
  nunc et in ho -- ra,
  nunc et in ho -- ra
  mor -- tis no -- strae,
  mor -- tis no -- strae, __
  mor -- tis no -- strae.
  A -- men, a -- men,
  a -- men, a -- men.

}