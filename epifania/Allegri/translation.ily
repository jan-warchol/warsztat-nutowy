  
verseI = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                \bold "Miserere          mei, Deus, secundum magnam    misericordiam Tuam."
                      \vspace #0.15
                      "Zmiłuj się [nade] mną, Boże, według   wielkiego miłosierdzia  Twego."
              }
          }
      }
  }
  
verseII = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                \bold "Et secundum multitudinem miserationum Tuarum, dele iniquitatem meam."
                      \vspace #0.15
                      "I  według   ogromu       litości      Twojej, zmaż nieprawość  moją."
              }
          }
      }
  }
  
verseIII = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                \bold "Amplius  lava  me   ab iniquitate  mea:   et a peccato meo    munda  me."
                      \vspace #0.15
                      "Zupełnie obmyj mnie z  nieprawości mojej, i  z grzechu mojego oczyść mnie."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór II"
          }
      }
  }
        
verseIV = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                \bold "Quoniam iniquitatem meam ego  cognosco: et   peccatum meum contra me  est  semper."
                      \vspace #0.15
                      "Bowiem  nieprawość  moją (ja) poznałem: (i)  grzech   mój  przede mną jest zawsze."
              }
          }
      }
  }
  
verseV = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "            Tibi  soli   peccavi,     et malum coram Te feci:"
                      \vspace #0.15
                            "[Przeciw] Tobie samemu zgrzeszyłem, i  zło   sam   Ci uczyniłem:"
                      \vspace #0.45
                      \bold "ut            iustificeris     in sermonibus Tuis,   et vincas  cum iudicaris."
                      \vspace #0.15
                            "więc [jesteś] usprawiedliwiony w  słowach    Twoich, i  słuszny w   osądzie."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór I"
          }
      }
  }
      
verseVI = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer   
                      \bold "Ecce enim   in iniquitatibus conceptus sum:    et  in peccatis concepit me   mater mea."
                      \vspace #0.15
                            "Oto  bowiem w  nieprawości   poczęty   jestem: (i) w  grzechu  poczęła  mnie matka moja."
              }
          }
      }
  }
                              
verseVII = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Ecce enim   veritatem dilexisti:  incerta, et occulta sapientiae Tuae  manifestasti mihi."
                      \vspace #0.15
                            "Oto  bowiem prawdę    umiłowałeś: tajemną  i  ukrytą  mądrość    Twoją objawiłeś    mi."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór II"
          }
      }
  }
                                 
verseVIII = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Asperges  me   hyssopo, et        mundabor:    lavabis  me,   et super nivem dealbabor."
                      \vspace #0.15
                            "Pokropisz mnie hizopem  i  [będę] oczyszczony: obmyjesz mnie, a  nad   śnieg wybieleję."   
              }
          }
      }
  }
           
verseIX = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Auditui   meo    dabis gaudium et laetitiam: et exultabunt  ossa  humiliata."
                      \vspace #0.15
                            "Słuchaniu mojemu dasz  radość  i  szczęście, i  uradują się kości poniżone."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór I"
          }
      }
  }
  
verseX = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Averte faciem  Tuam  a  peccatis meis:  et omnes     iniquitates meas dele."
                      \vspace #0.15
                            "Odwróć oblicze Twoje od grzechów moich, i  wszystkie nieprawości moje zmaż."
              }
          }
      }
  }
  
verseXI = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Cor   mundum crea   in me,   Deus: et spiritum rectum  innova in visceribus meis."
                      \vspace #0.15
                            "Serce czyste stwórz we mnie, Boże, i  ducha    prawego odnów  we wnętrzu    moim."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór II"
          }
      }
  }
           
verseXII = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "       Ne  projicias me   a  facie   Tua:    et Spiritum Sanctum  Tuum    ne  auferas a   me."
                      \vspace #0.15
                            "[Obyś] nie odrzucił  mnie od oblicza Twojego i  Ducha    Świętego Twojego nie odebrał ode mnie."
              }
          }
      }
  }
  
verseXIII = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Redde    mihi laetitiam salutaris Tui:     et spiritu principali confirma      me."
                      \vspace #0.15
                            "Przywróć mi   radość    zbawienia Twojego, i  ducha   mocnego    utwierdź [we] mnie."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór I"
          }
      }
  }
                                 
verseXIV = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Docebo iniquos   vias  Tuas:  et impii      ad Te               convertentur."
                      \vspace #0.15
                            "Pokażę nieprawym drogi Twoje, i  grzesznicy do Ciebie [zostaną] nawróceni."
              }
          }
      }
  }
  
verseXV = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Libera  me   de sanguinibus Deus, Deus salutis meae: et exultabit lingua mea iustitiam      Tuam."
                      \vspace #0.15
                            "Uwolnij mnie od krwi,       Boże, Boże zbawco  mój:  i  uwielbi   język  mój sprawiedliwość Twoją."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór II"
          }
      }
  }
                                 
verseXVI = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Domine, labia mea  aperies:   et os   meum annunciabit laudem Tuam."
                      \vspace #0.15
                            "Panie,  wargi moje otworzysz, i  usta moje ogłoszą     chwałę Twoją."
              }
          }
      }
  }
  
verseXVII = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Quoniam si     voluisses sacrificium, dedissem      utique:       holocaustis   non delectaberis."
                      \vspace #0.15
                            "Bowiem  gdybyś żądał     ofiary,      dałbym   [ją] niewątpliwie: całopaleniami nie cieszysz się [jednak]."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór I"
          }
      }
  }

verseXVIII = {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Sacrificium  Deo         spiritus contribulatus: cor    contritum, et humiliatum        Deus  non despicies."
                      \vspace #0.15
                            "Ofiarą [dla] Boga [jest] duch     skruszony:     sercem złamanym   i  upokorzonym [Ty], Boże, nie wzgardzisz."
              }
          }
      }
  }

verseXIX = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer
                      \bold "Benigne fac,  Domine, in     bona voluntate Tua   Sion:     ut  aedificentur        muri Jerusalem."
                      \vspace #0.15
                            "Dobrze  czyń, Panie,  według upodobania     Twego Syjonowi: aby umocnione [zostały] mury Jeruzalem."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór II"
          }
      }
  }
                                 
verseXX = {
    \once \override Score.RehearsalMark #'outside-staff-priority = ##f
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup \scale #'( 0.95 . 1) {
        \override #'(baseline-skip . 0)
        \column {
            \small \typewriter {
                \vspace #1 %spacer                                 
                      \bold "Tunc  acceptabis sacrificium iustitiae,    oblationes, et holocausta:  tunc  imponent super altare  Tuum  vitulos."
                      \vspace #0.15
                            "Wtedy przyjmiesz ofiarę      sprawiedliwą, dary        i  całopalenia: wtedy złożą    na    ołtarzu Twoim cielce."
              }
            \vspace #0.6
            \halign #-2.3 \bold "chór I"
          }
      }
  }
