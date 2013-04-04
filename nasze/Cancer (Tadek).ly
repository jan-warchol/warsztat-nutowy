\version "2.10.33"
\paper
{
  left-margin=1.3\cm
  right-margin=1.2\cm
}
#(set-global-staff-size 20)		% default staff size is 20
\header
{
  title = Cancer
  composer = "Tadeusz Piskozub"
}
staffprops =
{
  \key c \minor
  \time 4/4
  \tempo 4=200
}
%--------------------------------MELODY--------------------------------
IntroFirstGuitar =
{
  g8 d' es' g d' es' c' d' |
  c'4 bes as g |
  f8 g as f g as es f |
  es4 d bes,8 bes,16 bes, c4 |
  g8 d' es' g d' es' c' d' |
  c'4 bes as g |
  f8 g as f bes c' es f |
  es4 f c'8 bes c'4 |
}
FirstRiff =
{
  g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
}
FirstRiffA =
{
  g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
}
SecondRiffA =
{
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, c d |
}
SecondRiffB =
{
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes, as, |
}
SecondRiffC =
{
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, as, bes, |
}
SecondRiffD =
{
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes,8 as, bes,4 |
}
firstguitarmelody =
{
  % 1
  \IntroFirstGuitar
  % 9
  \IntroFirstGuitar
  % 17
  \IntroFirstGuitar
  % 25
  \IntroFirstGuitar
  % 33
  \FirstRiff
  % 37
  \FirstRiff
  % 41
  \FirstRiff
  % 45
  \FirstRiff
  % 49
  \clef bass \SecondRiffA
  % 53
  \SecondRiffB
  % 57
  \SecondRiffC
  % 61
  \SecondRiffD
  % 65
  f,8 g, g, f, c4 d |
  bes,8 as, as, g, f,4 f,8 bes, |
  es es es d bes,4 c |
  bes,8 c c bes, c bes, c4 |
  % 69
  f,8 g, g, f, c4 d |
  bes,8 as, as, g, f, g, f, bes, |
  es es es d bes,4 c |
  bes,8 c c bes, c bes, c c |
  % 73
  f, g, g, f, c4 d |
  bes,8 as, as, g, f,4 f,8 bes, |
  es es es d bes,4 c |
  bes,8 c c bes, c bes, c4 |
  % 77
  f,8 g, g, f, c4 d |
  bes,8 as, as, g, f, g, f, bes, |
  es es es d bes,4 c |
  bes,8 c c bes, c bes, c c |
  % 81
  g, s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, c d |
  % 85
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes, as, |
  % 89
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, as, bes, |
  % 93
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes,8 as, bes,4 |
  % 97
  \clef "treble_8" g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
  % 101
  g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
  % 105
  g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
  % 109
  g,8 g, g, g, <c g d' >2 |
  as,8 as, as, as, <f c' g' >2 |
  es8 es es d <c' f bes, >2 |
  bes,8 c c bes, <c' g c >2 |
  % 113
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 117
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 121
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 125
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 129
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 133
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 137
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 141
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 145
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 149
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 153
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 157
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 161
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 165
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 |
  % 169
  <g c f, >1 |
  <c' f bes, >1 |
  <es as es' >1 |
  <es as, bes >1 |
  % 173
  <d' g c >1 |
  <f c' g' >1 |
  <bes, f c' >1 |
  <c g c' >1 \bar "|."
}
secondguitarmelody =
{
  % 1
  <g d g, >1~|
  <g d g, >2. g,4 |
  <c f, f >1~|
  <c f, f >1 |
  % 5
  <g d g, >1~|
  <g d g, >2. g,4 |
  <c f, f >1~|
  <c f, f >1 |
  % 9
  <g d g, >1~|
  <g d g, >2. g,4 |
  <c f, f >1~|
  <c f, f >1 |
  % 13
  <g d g, >1~|
  <g d g, >2. g,4 |
  <c f, f >1~|
  <c f, f >1 |
  % 17
  g,8 g, g, g, g, g, g, g, |
  c4 bes, as, g, |
  f,8 f, f, f, f, f, f, f, |
  f, s8 f, s8 f, f,16 f, f,4 |
  % 21
  g,8 g, g, g, g, g, g, g, |
  c4 bes, as, g, |
  f,8 f, f, f, f, f, f, f, |
  f, s8 f, s8 f, f,16 f, f,4 |
  % 25
  g,8 g, g, g, g, g, g, g, |
  c4 bes, as, g, |
  f,8 f, f, f, f, f, f, f, |
  f, s8 f, s8 f, f,16 f, f,4 |
  % 29
  g,8 g, g, g, g, g, g, g, |
  c4 bes, as, g, |
  f,8 f, f, f, f, f, f, f, |
  f, s8 f, s8 f, f,16 f, f,4 |
  % 33
  g,8 g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 37
  g, g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 41
  g, g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 45
  g,8 g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 49
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, c d |
  % 53
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes, as, |
  % 57
  g,8 g, g, g, g, g, g, g, |
  as,4 bes, as, g, |
  f,8 f, f, f, f, f, g, g, |
  as,4 bes, as, bes, |
  % 61
  g,8 g, g, g, g, g, g, g, |
  as,4 bes, as, g, |
  f,8 f, f, f, f, f, g, c |
  d4 c bes,8 as, bes,4 |
  % 65
  f,8 g, g, f, g, f, g,4 |
  bes,8 as, as, g, f,4 f,8 bes, |
  es es es d f,4 g, |
  bes,8 c c bes, c bes, c4 |
  % 69
  f,8 g, g, f, g, f, g,4 |
  bes,8 as, as, g, f,4 f,8 bes, |
  es es es d f,4 g, |
  bes,8 c c bes, c bes, c4 |
  % 73
  f,4. f,8 c4 d |
  bes,4. g,8 f,4 f,8 bes, |
  es4. d8 bes,4 c |
  bes,8 bes, bes, bes, c bes, c4 |
  % 77
  f,8 g, g, f, g, f, g,4 |
  bes,8 as, as, g, f,4 f,8 bes, |
  es es es d f,4 g, |
  bes,8 c c bes, c bes, c4 |
  % 81
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  as,4 bes, c d |
  % 85
  g,8 s8 g, g, s8 g, g, s8 |
  as,4 bes, as, g, |
  f,8 s8 f, f, s8 f, g, s8 |
  d4 c bes, as, |
  % 89
  g,8 g, g, g, g, g, g, g, |
  as,4 bes, as, g, |
  f,8 f, f, f, f, f, g, g, |
  as,4 bes, as, bes, |
  % 93
  g,8 g, g, g, g, g, g, g, |
  as,4 bes, as, g, |
  f,8 f, f, f, f, f, g, c |
  d4 c bes,8 as, bes,4 |
  % 97
  g,8 g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 101
  g, g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 105
  g, g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 109
  g,8 g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 113
  g,8 g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 117
  g, g, g, g, f, g, f, g, |
  as, as, as, as, bes, c bes, c |
  es es es d bes, bes, bes, bes, |
  bes, c c bes, c c c c |
  % 121
  g, g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 125
  g,8 g, g, g, d2 |
  as,8 as, as, as, g2 |
  es8 es es d c2 |
  bes,8 c c bes, d2 |
  % 129
  g,8 g, g, g, d2 |
  c8 d es d es f es f |
  g4 f8 es f4 d8 es |
  f4 \times 2/3{es8 d es} c4 g8 as |
  % 133
  g4 \times 2/3{f8 es d} \times 2/3{es d c} \times 2/3{d c bes,} |
  \times 2/3{c bes, as,} \times 2/3{bes, as, g,} \times 2/3{as, g, f,} \times 2/3{g, as, bes,} |
  c8 d es f g as bes c' |
  es'1 |
  % 137
  g,8 g, g, g, d2 |
  c8 d es f d es f g |
  d'8~<d' bes> \times 2/3{d'8 c' bes} c'8 bes \times 2/3{a8 g f} |
  \times 2/3{g f es} \times 2/3{f es d} \times 2/3{es d c} as,4 |
  % 141
  \clef "treble_8" c d8 es \times 2/3{f8 g a} \times 2/3{bes8 c' d'} |
  g'4 f'8 es' f' es' \times 2/3{c'8 d' es'} |
  f'8 es' \times 2/3{f'8 es' d'} es'8 d' c' bes |
  es' d' c' bes c'2 |
  % 145
  g4 g8 bes c' g \times 2/3{as8 bes c'} |
  d'8 es' d' es' d' es' d' es' |
  es'4 \times 2/3{d'8 c' d'} es'4 \times 2/3{d'8 c' d'} |
  f'4 \times 2/3{es'8 d' c'} as4 g |
  % 149
  g g8 bes c' d' es' f' |
  g'4 f'8 es' bes' as' g' f' |
  bes'4 as'8 g' as'4 g'8 f' |
  g'1 |
  % 153
  \clef treble g'4 g'8 as' bes' c'' d'' es'' |
  g''4 \times 2/3{f''8 es'' d''} \times 2/3{es'' d'' c''} \times 2/3{d'' c'' bes'} |
  \times 2/3{c'' bes' as'} \times 2/3{bes' as' g'} \times 2/3{f' g' as'} \times 2/3{bes' c'' d''} |
  as''2 g'' |
  % 157
  \times 2/3{g''8 f'' es''} \times 2/3{g'' f'' es''} \times 2/3{g'' f'' es''} \times 2/3{g'' f'' es''} |
  \times 2/3{f'' es'' d''} \times 2/3{f'' es'' d''} \times 2/3{f'' es'' d''} \times 2/3{f'' es'' d''} |
  \times 2/3{es'' d'' c''} \times 2/3{d'' es'' d''} \times 2/3{c'' bes' as'} \times 2/3{g' f' es'} |
  \times 2/3{d' es' f'} \times 2/3{g' as' g'} g'2 |
  % 161
  g' es'8 f' g' as' |
  c''2 es''8 d'' c'' g' |
  as'2 g'8 as' g' as' |
  bes'2 \times 2/3{c''8 bes' as'} \times 2/3{f' g' as'} |
  % 165
  g'2 es'8 f' g' as' |
  g'2 as'8 g' f' g' |
  f'2 g'8 f' es' d' |
  c'2 \times 2/3{bes8 c' d'} \times 2/3{es' f' as'} |
  % 169
  g'2 es'8 f' g' as' |
  c''2 es''8 d'' c'' g' |
  as'2 g'8 as' g' as' |
  bes'2 \times 2/3{c''8 bes' as'} \times 2/3{f' g' as'} |
  % 173
  g'2 es'8 f' g' as' |
  f''2 es''8 d'' c'' bes' |
  c''2 \times 2/3{bes'8 c'' d''} \times 2/3{es'' d'' c''} |
  c''1 \bar "|."
}
bassguitarmelody =
{
  % 1
  g,,1~ |
  g,,2. g,,4 |
  f,,1~ |
  f,,1 |
  % 5
  g,,1~ |
  g,,2. g,,4 |
  f,,1~ |
  f,,1 |
  % 9
  g,,1~ |
  g,,2. g,,4 |
  f,,1~ |
  f,,1 |
  % 13
  g,,1~ |
  g,,2. g,,4 |
  f,,1~ |
  f,,1 |
  % 17
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  c,4 bes,, as,, g,, |
  f,,8 f,, f,, f,, f,, f,, f,, f,, |
  f,, s8 f,, s8 f,, f,,16 f,, f,,4 |
  % 21
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  c,4 bes,, as,, g,, |
  f,,8 f,, f,, f,, f,, f,, f,, f,, |
  f,, s8 f,, s8 f,, f,,16 f,, f,,4 |
  % 25
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  c,4 bes,, as,, g,, |
  f,,8 f,, f,, f,, f,, f,, f,, f,, |
  f,, s8 f,, s8 f,, f,,16 f,, f,,4 |
  % 29
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  c,4 bes,, as,, g,, |
  f,,8 g,, as,, f,, bes,, c, es, f, |
  es,4 d, bes,,8 bes,,16 bes,, c,4 |
  % 33
  g,,8 g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 37
  g,, g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 41
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, s8 c, s8 c, |
  bes,, c, c, bes,, bes,, c, bes,, c, |
  % 45
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, c,2 |
  bes,,8 c, c, bes,, es, d, c, bes,, |
  % 49
  g,,4 g,,8 g,, g,, g,, g,,4 |
  as,, bes,,8 f,, as,, s8 g,,4 |
  f,, f,,8 f,, f,, f,, g,, bes,, |
  as,,4 bes,, c,8 bes,, d,4 |
  % 53
  g,, g,,8 g,, g,, g,, g,,4 |
  as,, bes,,8 f,, as,, s8 g,,4 |
  f,, f,,8 f,, f,, f,, g,, bes,, |
  d, c, bes,, c, bes,, as,, bes,,4 |
  % 57
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  as,,4 bes,,8 f,, as,, s8 g,,4 |
  f,,8 f,, f,, f,, f,, f,, g,, g,, |
  as,,4 bes,, c,8 bes,, d,4 |
  % 61
  g,,8 g,, g,, g,, g,, g,, g,,4 |
  as,,8 bes,, c, bes,, as,, bes,, as,, g,, |
  f,, f,, f,, f,, f,, f,, g,, bes,, |
  d, c, bes,, c, bes,, as,, bes,,4 |
  % 65
  f,,8 g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 69
  f,,8 g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  <f,, bes,, >8 <g,, c, >8 <g,, c, >8 <f,, bes,, >8 <g,, c, >8
  <f,, bes,, >8 <g,, c, >4 |
  % 73
  f,, g,,8 f,, g,,4 g,, |
  bes,,8 as,, as,, g,, f,,4 f,,8 bes,, |
  bes,, bes,, bes,, g,, bes,,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 77
  f,, g,,8 f,, g,,4 g,, |
  bes,,8 as,, as,, g,, f,,4 f,,8 bes,, |
  bes,, bes,, bes,, g,, bes,,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 81
  g,, g,,8 g,, g,, g,, g,,4 |
  as,, bes,,8 f,, as,, s8 g,,4 |
  f,, f,,8 f,, f,, f,, g,, bes,, |
  as,,4 bes,, c,8 bes,, d,4 |
  % 85
  g,, g,,8 g,, g,, g,, g,,4 |
  as,, bes,,8 f,, as,, s8 g,,4 |
  f,, f,,8 f,, f,, f,, g,, bes,, |
  d, c, bes,, c, bes,, as,, bes,,4 |
  % 89
  g,,8 g,, g,, g,, g,, g,, g,, g,, |
  as,,4 bes,,8 f,, as,, s8 g,,4 |
  f,,8 f,, f,, f,, f,, f,, g,, g,, |
  as,,4 bes,, c,8 bes,, d,4 |
  % 93
  g,,8 g,, g,, g,, g,, g,, g,,4 |
  as,,8 bes,, c, bes,, as,, bes,, as,, g,, |
  f,, f,, f,, f,, f,, f,, g,, bes,, |
  d, c, bes,, c, bes,, as,, bes,,4 |
  % 97
  g,,8 g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 101
  g,, g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 105
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, s8 c, s8 c, |
  bes,, c, c, bes,, bes,, c, bes,, c, |
  % 109
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, c,2 |
  bes,,8 c, c, bes,, es, d, c, bes,, |
  % 113
  g,, g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 117
  g,, g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 121
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, s8 c, s8 c, |
  bes,, c, c, bes,, bes,, c, bes,, c, |
  % 125
  g,, g,, g,, g,, s8 d, s8 d, |
  as,, as,, as,, as,, s8 <g,, g, >8 s8 <g,, g, >8 |
  es, es, es, d, c,2 |
  bes,,8 c, c, bes,, es, d, c, bes,, |
  % 129
  f,, g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 133
  f,,8 g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  <f,, bes,, >8 <g,, c, >8 <g,, c, >8 <f,, bes,, >8 <g,, c, >8
  <f,, bes,, >8 <g,, c, >4 |
  % 137
  f,, g,,8 f,, g,,4 g,, |
  bes,,8 as,, as,, g,, f,,4 f,,8 bes,, |
  bes,, bes,, bes,, g,, bes,,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 141
  f,, g,,8 f,, g,,4 g,, |
  bes,,8 as,, as,, g,, f,,4 f,,8 bes,, |
  bes,, bes,, bes,, g,, bes,,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 145
  f,,8 g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 149
  g,,8 g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 153
  f,, g,, g,, f,, c,4 d, |
  bes,, as,, f,, f,,8 bes,, |
  es, es, es, d, es,4 c, |
  bes,,8 c, c, bes,, c, bes,, c,4 |
  % 157
  g,,8 g,, g,, g,, s8 g,, s8 g,, |
  as,, as,, as,, as,, s8 as,, s8 as,, |
  es, es, es, d, s8 d, s8 d, |
  bes,, c, c, bes,, s8 bes,, s8 bes,, |
  % 161
  g,,2 as,,8 f,, g,, as,, |
  c,2 as,,8 g,, c, g,, |
  es,2 d,8 es, c, as,, |
  bes,,2 \times 2/3{c,8 c, c,} \times 2/3{c, c, c,} |
  % 165
  g,,2 f,,8 f,, g,, as,, |
  c,2 as,,8 g,, f,, g,, |
  bes,,2 c,8 bes,, as,, g,, |
  f,,2 \times 2/3{bes,,8 bes,, bes,,} \times 2/3{bes,, bes,, bes,,} |
  % 169
  g,,8 s8 g,, s8 as,, f,, g,, as,, |
  c, c, es, es, as,, g,, c, g,, |
  es, es, es, es, d, es, c, as,, |
  bes,, bes,, bes,, bes,, \times 2/3{c,8 c, c,} \times 2/3{c, c, c,} |
  % 173
  g,,8 s8 g,, s8 f,, f,, g,, as,, |
  <f, c, >2 as,,8 g,, f,, g,, |
  <c, bes,, >2 c,8 bes,, as,, g,, |
  <c, f,, >1 \bar "|."
}

%--------------------------------SCORE-LAYOUT--------------------------------
\score {
  \new StaffGroup <<
    \new Staff = firstguitar {
      \clef "treble_8"
      \set Staff.instrumentName = "Distortion guitar 1"
      \set Staff.shortInstrumentName = "G1 "
      \set Staff.midiInstrument = "distorted guitar"
      \new Voice = firstguitar
      {
        \staffprops
        \firstguitarmelody
      }
    }
    \new Staff = secondguitar {
      \clef "bass"
      \set Staff.instrumentName = "Distortion guitar 2"
      \set Staff.shortInstrumentName = "G2 "
      \set Staff.midiInstrument = "distorted guitar"
      \new Voice = secondguitar
      {
        \staffprops
        \secondguitarmelody
      }
    }
    \new Staff = bassguitar {
      \clef "bass_8"
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "B "
      \set Staff.midiInstrument = "electric bass (finger)"
      \new Voice = bassguitar
      {
        \staffprops
        \bassguitarmelody
      }
    }
  >>
  \layout {
    indent = 3\cm
  }
}
