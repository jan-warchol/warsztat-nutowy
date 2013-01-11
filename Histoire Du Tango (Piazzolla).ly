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
}