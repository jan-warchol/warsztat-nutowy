\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 15)

\include "filename.ily"
\bookOutputSuffix "size 15, block"

scripture = \markup { \column { "Ps 51 (50)" " " } }

translation = \markup \fontsize #-2.5 {
    \typewriter {
        \override #'(baseline-skip . 0)
        \column {
            \vspace #1
            \bold "Miserere          mei, Deus, secundum magnam    misericordiam Tuam.  Et secundum multitudinem miserationum Tuarum, dele iniquitatem meam."
                  \vspace #0.15 %x
                  "Zmiłuj się [nade] mną, Boże, według   wielkiego miłosierdzia  Twego. I  według   ogromu       litości      Twojej, zmaż nieprawość  moją."
                  \vspace #0.45 %y
            \bold "Amplius  lava  me   ab iniquitate  mea:   et a peccato meo    munda  me."
                  \vspace #0.15 %x
                  "Zupełnie obmyj mnie z  nieprawości mojej, i  z grzechu mojego oczyść mnie."
                  \vspace #0.45 %y
            \bold "Quoniam iniquitatem meam ego  cognosco: et   peccatum meum contra me  est  semper."
                  \vspace #0.15 %x
                  "Bowiem  nieprawość  moją (ja) poznałem: (i)  grzech   mój  przede mną jest zawsze."
                  \vspace #0.45 %y
            \bold "          Tibi  soli   peccavi,     et malum coram Te feci:      ut            iustificeris     in sermonibus Tuis,   et vincas  cum iudicaris."
                  \vspace #0.15 %x
                  "[Przeciw] Tobie samemu zgrzeszyłem, i  zło   sam   Ci uczyniłem: więc [jesteś] usprawiedliwiony w  słowach    Twoich, i  słuszny w   osądzie."
                  \vspace #0.45 %y
            \bold "Ecce enim   in iniquitatibus conceptus sum:    et  in peccatis concepit me   mater mea."
                  \vspace #0.15 %x
                  "Oto  bowiem w  nieprawości   poczęty   jestem: (i) w  grzechu  poczęła  mnie matka moja."
                  \vspace #0.45 %y
            \bold "Ecce enim   veritatem dilexisti:  incerta, et occulta sapientiae Tuae  manifestasti mihi."
                  \vspace #0.15 %x
                  "Oto  bowiem prawdę    umiłowałeś: tajemną  i  ukrytą  mądrość    Twoją objawiłeś    mi."
                  \vspace #0.45 %y
            \bold "Asperges  me   hyssopo, et        mundabor:    lavabis  me,   et super nivem dealbabor."
                  \vspace #0.15 %x
                  "Pokropisz mnie hizopem  i  [będę] oczyszczony: obmyjesz mnie, a  nad   śnieg wybieleję."
                  \vspace #0.45 %y
            \bold "Auditui   meo    dabis gaudium et laetitiam: et exultabunt  ossa  humiliata."
                  \vspace #0.15 %x
                  "Słuchaniu mojemu dasz  radość  i  szczęście, i  uradują się kości poniżone."
                  \vspace #0.45 %y
            \bold "Averte faciem  Tuam  a  peccatis meis:  et omnes     iniquitates meas dele."
                  \vspace #0.15 %x
                  "Odwróć oblicze Twoje od grzechów moich, i  wszystkie nieprawości moje zmaż."
                  \vspace #0.45 %y
            \bold "Cor   mundum crea   in me,   Deus: et spiritum rectum  innova in visceribus meis."
                  \vspace #0.15 %x
                  "Serce czyste stwórz we mnie, Boże, i  ducha    prawego odnów  we wnętrzu    moim."
                  \vspace #0.45 %y
            \bold "       Ne  projicias me   a  facie   Tua:    et Spiritum Sanctum  Tuum    ne  auferas a   me."
                  \vspace #0.15 %x
                  "[Obyś] nie odrzucił  mnie od oblicza Twojego i  Ducha    Świętego Twojego nie odebrał ode mnie."
                  \vspace #0.45 %y
            \bold "Redde    mihi laetitiam salutaris Tui:     et spiritu principali confirma      me."
                  \vspace #0.15 %x
                  "Przywróć mi   radość    zbawienia Twojego, i  ducha   mocnego    utwierdź [we] mnie."
                  \vspace #0.45 %y
            \bold "Docebo iniquos   vias  Tuas:  et impii      ad Te               convertentur."
                  \vspace #0.15 %x
                  "Pokażę nieprawym drogi Twoje, i  grzesznicy do Ciebie [zostaną] nawróceni."
                  \vspace #0.45 %y
            \bold "Libera  me   de sanguinibus Deus, Deus salutis meae: et exultabit lingua mea iustitiam      Tuam."
                  \vspace #0.15 %x
                  "Uwolnij mnie od krwi,       Boże, Boże zbawco  mój:  i  uwielbi   język  mój sprawiedliwość Twoją."
                  \vspace #0.45 %y
            \bold "Domine, labia mea  aperies:   et os   meum annunciabit laudem Tuam."
                  \vspace #0.15 %x
                  "Panie,  wargi moje otworzysz, i  usta moje ogłoszą     chwałę Twoją."
                  \vspace #0.45 %y
            \bold "Quoniam si     voluisses sacrificium, dedissem      utique:       holocaustis   non delectaberis."
                  \vspace #0.15 %x
                  "Bowiem  gdybyś żądał     ofiary,      dałbym   [ją] niewątpliwie: całopaleniami nie cieszysz się [jednak]."
                  \vspace #0.45 %y
            \bold "Sacrificium  Deo         spiritus contribulatus: cor    contritum, et humiliatum,       Deus  non despicies."
                  \vspace #0.15 %x
                  "Ofiarą [dla] Boga [jest] duch     skruszony:     sercem złamanym   i  upokorzonym [Ty], Boże, nie wzgardzisz."
                  \vspace #0.45 %y
            \bold "Benigne fac,  Domine, in     bona voluntate Tua   Sion:     ut  aedificentur        muri Jerusalem."
                  \vspace #0.15 %x
                  "Dobrze  czyń, Panie,  według upodobania     Twego Syjonowi: aby umocnione [zostały] mury Jeruzalem."
                  \vspace #0.45 %y
            \bold "Tunc  acceptabis sacrificium iustitiae,    oblationes, et holocausta:  tunc  imponent super altare  Tuum  vitulos."
                  \vspace #0.15 %x
                  "Wtedy przyjmiesz ofiarę      sprawiedliwą, dary        i  całopalenia: wtedy złożą    na    ołtarzu Twoim cielce."
          %  \vspace #1
          }
      }
  }
  
composerShort = "(Allegri)"

\paper {
   % paper-width = 100 \cm
   % ragged-right = ##t
    
    % page-count = #
    % system-count = #
    indent = 5 \mm
    short-indent = 0 \mm
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 0
    markup-system-spacing #'basic-distance = 105
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

choirI = { 
    \once \override Score.RehearsalMark #'self-alignment-X = #-2.3
    \mark \markup \bold { "chór I" } 
  }
parenthesizedchoirI = { 
    \once \override Score.RehearsalMark #'self-alignment-X = #-2.1
    \mark \markup \normalsize \bold { "(chór I)" } 
  }
choirII = { 
    \once \override Score.RehearsalMark #'self-alignment-X = #-2.3
    \mark \markup \bold { "chór II" } 
  }
  
individualBreaks = {
            s1*2*6 \break \parenthesizedchoirI s1*2*6 \break  s1*2*2 \break   
    \choirII s1*2*7 \break s1*2*7 \break  s1*2*2  \break 
    \choirI s1*2*5 \break s1*2*7 \break  s1*2*2 \break   
    \choirII s1*2*6 \break s1*2*7 \break  s1*2*2  \break
    \choirI s1*2*5 \break s1*2*7 \break  s1*2*2 \break   
    \choirII s1*2*6 \break s1*2*7 \break  s1*2*2  \break
    \choirI s1*2*5 \break s1*2*7 \break  s1*2*2 \break   
    \choirII s1*2*6 \break s1*2*7 \break  s1*2*2  \break
    \choirI s1*2*4 s1 \break s1 s1*2*7 \break  s1*2*2 \break   
    \choirII s1*2*6 \break s1*2*7 \break 
    \choirI s1*2*5 \break 
  }
  
alignleft = { \once \override LyricText #'self-alignment-X = #-1 }
psalmodia = { \once \override Staff.NoteHead #'style = #'altdefault }
\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
  <<
    \new ChoirStaff = choir
      <<
        \set ChoirStaff.instrumentName = \markup { \rotate #90 \column { \bold \huge "      chór I" \vspace #1.5 } }
        \choirSopranoIStaffVar
        \choirSopranoILyricsVar
        \choirSopranoIIStaffVar
        \choirSopranoIILyricsVar
        \choirAltoStaffVar
        \choirAltoLyricsVar
        \choirTenorStaffVar
        \choirTenorLyricsVar
        \choirBassStaffVar
        \choirBassLyricsVar
      >>
    \soloTenorStaffVar
    \soloTenorLyricsVar
    
    \new ChoirStaff = concertans
      <<
        \set ChoirStaff.instrumentName = \markup { \rotate #90 \column { \bold \huge "chór II" \vspace #1.5 } }
        \soloSopranoIStaffVar
        \soloSopranoILyricsVar
        \soloSopranoIIStaffVar
        \soloSopranoIILyricsVar
        \soloAltoStaffVar
        \soloAltoLyricsVar
        \soloBassStaffVar
        \soloBassLyricsVar
      >>
  >>
    \layout { 
        \context {
            \RemoveEmptyStaffContext
          }
        \context {
            \Lyrics \consists "Tweak_engraver"
          }
        \context {
            \Staff   
                \override BarLine #'space-alist =
                    #'((time-signature . (extra-space . 0.75))
                      (custos . (minimum-space . 2.0))
                      (clef . (minimum-space . 1.0))
                      (key-signature . (extra-space . 1.0))
                      (key-cancellation . (extra-space . 1.0))
                      (first-note . (fixed-space . 1))
                      (next-note . (minimum-fixed-space  . 1.2))
                      (right-edge . (extra-space . 0.0)))
              }
        \context {
            \Score  \override SpacingSpanner
            #'common-shortest-duration = #(ly:make-moment 1320 1024 )
                \override BarNumber #'outside-staff-priority = ##f
                \override NonMusicalPaperColumn #'full-measure-extra-space = #0 
                \override BarNumber #'break-visibility = #'#(#f #t #t) 
                \override BarNumber #'self-alignment-X = 
                    #(lambda (grob)
                       (let ((break-dir (ly:item-break-dir grob)))
                         (set! (ly:grob-property grob 'self-alignment-X)
                               (if (= break-dir RIGHT)
                                   1
                                   0))))
                \override BarNumber #'stencil =
                      #(lambda (grob)
                         (let ((break-dir (ly:item-break-dir grob)))
                           (set! (ly:grob-property grob 'font-size)
                                 (if (= break-dir RIGHT)
                                     -1
                                     -3))
                           (ly:text-interface::print grob)))
          }
      }
  }
