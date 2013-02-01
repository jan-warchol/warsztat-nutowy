\version "2.17.3"

\header {
  title = \markup \center-column { "Histoire Du Tango" "Bordel-1900" }
  composer = "Astor Piazzolla"
  arranger = "arr. Stephen Cohn"
  instrument = Flute
}

\new Staff \relative f'' {
  \key a \major
  \time 2/4
  \tempo "Molto giocoso" 8 = 180

  r4 r16 e16( \f a-. ) cis-.
  e16-. dis-. fis-. e-. \appoggiatura { d32[ e] } dis16-. cis-. b-. a-.
  e'( gis,-.) b-. e-. r4
  r4 r16 g,,->( \mf a ) e'
  d-> fis, a d-> f, a d-> e,
  a cis dis, fis-. b-. a-. gis-. b-.
  a( cis-.) e-. a-. r4
  r4 r16 e ( \ff a-. ) cis-.
  e-> \times 2/3 { b32( e b) } a16-. e-. cis'-> ( gis ) fis-. cis-.
  b'-> \times 2/3 { fis32( b fis) } e16-. b-. e-> ( b) a-. e-.
  cis'-> dis, fis b-> d, f b-> gis
  r4 r16 a->( \mf cis-.) e-.
  a-. gis-. b-. a-. gis-. b-. a-. fis-.
  cis'-> b-. fis-. cis'-> b-. fis-. cis'-> b-.
  r f( d'-.) cis-. \appoggiatura { b32 [ cis] } b16-. a-. gis-. a-.
  b-> a-. e-. b'-> a-. e-. b'-> a-.
  r16 d,(-> a'-.) gis-. b-. a-. g-. fis-.
  a-> \times 2/3 { g32( a g) } d16-. d'-> a-. gis-. d-> gis-.
  r16 c,->( e-.) g-. c-. bes-. a-. g-.
  r f(-> a-.) c-. f-. e-. d-. c-.
  r bes,->( d-.) f-. bes-. as-. g-. f-.
  r es->( g-.) bes-. es-. des-. c-. bes-.
  r e,->( gis-.) b-. e->( d-.) cis-. e->(
  d-.) cis-. d-. b-. \times 8/10 { e,,32 ( fis gis a b cis d e fis gis) }
  a8-> r8 r4
  R2
  r16 e,-> ( e'-.) e-. e-. e-. e-. e-.
  \times 2/3 { e16->( fis e) } d-. cis-. \times 2/3 { d->( e d) } cis-. b-.
  \times 2/3 { cis->( d cis) } b-. a-. b->( a) gis-. b-.
  r16 e->( a-.) e'-. d-. a-. fis-. d-.
  r16 d->( g-.) d'-. c-. g-. e-. c-.
  r16 f,-. c'-. f-. e->( fis-.) gis-. e-.
  a8.-> e16-. a8-> e16-. e-.
  a16-> \times 2/3 { e32-. e-. e-. } e16-. e-. a->( gis-.) fis-. a-.
  gis32( a ais b bis cis d dis) e8 r
  r16 e,->( e-.) e-. e-.-> e-. e-. e-.
  b'8.-> e,16-. b'8-> e,16-. e-.
  b'16-> \times 2/3 { e,32-. e-. e-. } e16-. e-. b'->( a-.) gis-. b-.
  \times 4/7 { a16( ais b bis cis d dis } e8) r8
  r16 e,16->( a!-.) a-. a-.-> a-. a-. a-.
  a-> e-. e-. a-> e-. e-. a-> e-.
  r cis->( a'-.) a-. a-.-> a-. a-. a-.
  a-> d,-. d-. a'-> d,-. d-. a'-> d,-.
  r d->( f-.) a-. d-.-> cis-. b-. d-.
  r cis,->( e-.) a-. cis-.-> b-. d-. cis-.
  b-. a-. gis-. fis-. fis-.-> b,-. b'-. fis-.
  \time 3/4
  e16-.-> b-. b'-. e,-. r8 \appoggiatura { fis'32 [ gis ] } a8 r4
  \time 2/4
  r16 f,->( \mp c) f, f'->( c) f, f'->
  r16 e->( b) e, e'->( a,) e e'->
  r16 d->( a) d, d'->( g,) d d'->
  r16 e,( a) cis e dis fis e
  r16 g,->( g'-.) g-. g-. g-. g-. g-.
  r16 g->( g'-.) g-. g-. g-. g-. g-.
  r16 a,,( d) f-. e32->( fis e d c16 b)
  r16 e->( \p a,-.) a-. e'->( b-.) b-. e-.
  d->( c-.) d-. b-. a-. b-. c-. d-.
  e->( b-.) a-. e-. r16 fis32( fis a b c d)
  e8-> b'16-. a-. e->( b-.) a-. e-.
  b'->( a-.) e-. b-. a'->( a,-.) e'-. a-.
  e->-. e-. e-. e-.->  e32-. e-. e-. e-. e16-. e-.
  \key a \minor
  a'8->-. r8 r4
  R2*2
  r4 r8. \times 2/3 { gis,32 ( a b) }
  c8-> dis,16-- e c'-> dis,-- e c'
  dis,-- e c'-> dis,-- e c'-> dis,-- e
  r16 b'-> cisis,-> dis b'-> cisis,-- dis b'->
  cisis,-- dis b'-> cisis,-- dis b'-> cisis,-- dis
  r16 b''--
}