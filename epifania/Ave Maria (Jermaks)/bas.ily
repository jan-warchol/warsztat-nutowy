\version "2.16.1"

bas = \relative f {
  \dynamicUp
  \tupletUp
  \clef bass
  % podaj tonację, na przykład \key g \minor
  \key a \major
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \voiceTwo
  \override Hairpin #'stencil = ##f
  \override DynamicText #'stencil = ##f
  \override DynamicTextSpanner #'stencil = ##f
  \override TextScript #'stencil = ##f

  % Prawdopodobnie należałoby przenieść część
  % (całość?) dynamiki z górnej pięciolinii, ale nie
  % jestem tego pewna, więc umieszczam tylko
  % tę szczątkową z dolnej.

  a,2\p a4. a8
  a2 a
  a a4. a8
  a2 a'4.( fis8)
  cis2 cis4. cis8
  cis2 cis
  fis4\mf e dis e8\melisma fis\melismaEnd
  gis4 fis8 fis dis dis gis,4
  a2\mp b4 cis
  e4. e8 gis4( gis,)

  % takt 11.
  fis( gis8 a) gis4 a
  b4.\melisma cis8\melismaEnd dis4( b)
  cis\p( b) cis( gis)
  dis'( cis) fis( e)
  gis( fis) a( gis)
  fis( cis) cis'( b)
  a8\f\melisma gis\melismaEnd fis4 fis8\melisma gis cis, e\melismaEnd
  gis4 a8 b fis4( gis)
  cis,2 cis4 cis8\melisma b\melismaEnd
  a2( b)
  e,1\mp % !!! tu się dzielą basy, górny ma b !!!

  % takt 22.
  a2\mp a4. a8
  a2 a
  a a
  a2 a'4.( fis8)
  cis2 cis4. cis8
  cis2 cis
  fis4 e dis( e8 fis)
  gis4 fis8 fis dis4 gis,4
  a2\mp b4 cis
  e2 gis4( gis,)

  % takt 32.
  fis( gis8 a) gis4( a)
  b4. cis8 dis4( b)
  cis( b) cis gis
  dis'( cis) fis( e)
  gis( fis) a gis
  fis( cis) cis'( b)
  a8\f\melisma gis\melismaEnd fis4 fis8\melisma gis cis, e\melismaEnd
  gis4 a8 b fis4( gis)
  cis,2 cis4 cis8\melisma b\melismaEnd
  a2( b)
  e,1 % !!! tu się dzielą basy, górny ma b !!!

  % takt 42.
  a2 a
  a a
  a a
  \time 6/4
  a1.
  a\fermata \bar "|." % !!! tu się dzielą basy, górny ma e !!!

}

bastekst = \lyricmode {
  % wyrzuciłam przedłużenie ostatniej sylaby (__)
  % w przypadkach, gdy odnosiło się do tenora.

  A -- ve Ma -- ri -- a, gra -- ti -- a ple -- na, __
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta __ tu,
  be -- ne -- di -- cta tu
  in mu -- li -- e -- ri -- bus, __
  et __ be -- ne -- di -- ctus __ fru -- ctus
  ven -- tris, __ fru -- ctus __ ven -- tris __
  tu -- i, Je -- su, tu -- i,
  Je -- su, tu -- i, __ Je -- su.

  % takt 22.
  San -- cta Ma -- ri -- a,
  ma -- ter De -- i, __
  San -- cta Ma -- ri -- a,
  ma -- ter De -- i, ma -- ter De -- i,
  o -- ra pro no -- bis __
  pec -- ca -- to -- ri -- bus, __
  nunc et in ho -- ra, __
  nunc et in ho -- ra __
  mor -- tis no -- strae,
  mor -- tis no -- strae,
  mor -- tis __ no -- strae.
  A -- men, a -- men,
  a -- men, a -- men.

}