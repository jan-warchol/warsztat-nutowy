\version "2.14.1"
\pointAndClickOff
\header	{
	title = "Nad Betlejem w ciemną noc (wersja orkiestrowa)"
	subsubtitle = \markup { "tradycyjna kolęda francuska (XVI wiek), znana też jako" \italic "Gloria" }
}
commonprops = {
	\autoBeamOff
	\key f \major
	\time 4/4
	\tempo 4 = 108
    \compressFullBarRests
	\set Score.tempoHideNote = ##t
}
\paper { 
	page-count = #1
	ragged-last-bottom = ##f	
    top-markup-spacing #'basic-distance = 3
    markup-system-spacing #'basic-distance = 14
    system-system-spacing #'basic-distance = 16
    \include "EpifaniaHeaders3.ily"
}
#(set-global-staff-size 17)

\include "miscellaneous.ily"
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
	R1*7
    a4 a a c c4. bes8 a2
	a4 g a c a4. g8 f2
	% 5
	a4 a a c c4. bes8 a2
	a4 g a c a4. g8 f2
	\bar "||"
	c'2( d8[ c bes a]
	bes2 c8[ bes a g]
	a2 bes8[ a g f]
	g4.) c,8 c2
	f4 g a bes 
	a2 g2
	
	c2( d8[ c bes a]
	bes2 c8[ bes a g]
	a2 bes8[ a g f]
	g4.) g8 c,2
	f4 g a bes
	a2( g) f1 \bar "|."
}
altomelody = \relative f' {	
	R1*7
	f4 f f f g g f2
	f4 g f f f e f2
	% 5
	f4 f f a a4. g8 f2
	f4 e f f e e f2

	c'8([ bes a g] fis2
	bes8[ a g f] e2
	a8[ g f e] d4 bes
	c4.) c8 c2
	c4 e f g
	f2 e2

	c'8([ bes a g] fis2
	bes8[ a g f] e2
	a8[ g f e] d4 bes
	b4.) b8 c2
	c4 e f g
	f2( e) f1 \bar "|."
}
tenormelody = \relative c'{
	R1*7
	c4 c c a bes c c2
	c4 bes c c c4. bes8 a2 
	% 5
	c4 c d e d c c( a) |
	b4 c c c c4. bes?8 a2 
	
	a2( d~ d c~
	c bes g4) f e2
	f4 c' c d
	c2 bes2
	
	a2( d~ d c~
	c bes g4) f e2
	f4 c' c d
	c2.( bes4) a1 \bar "|." 
}
bassmelody = \relative f {
	R1*7
	f4 f a a e e f2
	f4 d f a c c, f2
	% 5
	f4 e d c bes c d2
	g4 c, f a c4 c, f2
	
	f2( d4 fis g2 c,4 e
	f2 bes,4 d e) d c( bes)
	a c f bes,
	c2 c2 
	
	f2( d4 fis g2 c,4 e
	f2 bes,4 d~ d) d c( bes)
	a c f bes,
	c1 f \bar "|."
}
akordy = \chordmode {}
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode { \set stanza = "1. "
	Nad Be -- tle -- jem w_cie -- mną \rightyy noc
	śpie -- wał pieśń a -- nio -- łów \rightyy chór.
	Ich ra -- do -- sny, cud -- ny \rightyy głos
	od -- bi -- ja -- ło e -- cho \rightyy gór.
	Glo -- ri -- a in ex -- cel -- sis De -- o!
	Glo -- ri -- a in ex -- cel -- sis De -- o!
}

stanzas = \markup {
	\fill-line {
		\large {
			\hspace #0.1
			\column {
				\line {
					"2. "
					\column	{
						"Pastuszkowie, jaką pieśń słyszeliście nocy tej?"
						"Jakaż to radosna wieść była tam natchnieniem jej?"
					}
				}
				\vspace #0.25
				\line {
					"3. "
					\column {
						"Do Betlejem prędko śpiesz, zostaw stada pośród gór,"
						"gdyż anielska głosi wieść, że się tam narodził Król."
					}
				}
				\vspace #0.25
				\line {
					"4. "
					\column {
						"W twardym żłobie leży tam Jezus, nieba, ziemi Pan."
						"Chciejmy Mu w pokorze wznieść uwielbienie, chwałę, cześć."
					}
				}
				\vspace #1.5
			}
			\hspace #0.1
		}
	}
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
	\new ChoirStaff <<
		\new Staff = soprano {
			\clef treble
			\set Staff.instrumentName = "S " 
			\set Staff.shortInstrumentName = "S "
			\new Voice = soprano {
				\commonprops
				\set Voice.midiInstrument = "clarinet"
				\sopranomelody 
			}
		}
		\new Lyrics = sopranolyrics \lyricsto soprano \text
		
		\new Staff = alto {
			\clef treble
			\set Staff.instrumentName = "A " 
			\set Staff.shortInstrumentName = "A "
			\new Voice = alto {
				\commonprops
				\set Voice.midiInstrument = "english horn"
				\altomelody 
			}
		}
		\new Lyrics = altolyrics \lyricsto alto \text
		
		\new Staff = tenor {
			\clef "treble_8"
			\set Staff.instrumentName = "T " 
			\set Staff.shortInstrumentName = "T "
			\new Voice = tenor {
				\commonprops
				\set Voice.midiInstrument = "english horn"
				\tenormelody
			}
		}
		\new Lyrics = tenorlyrics \lyricsto tenor \text
		
		\new Staff = bass {
			\clef bass
			\set Staff.instrumentName = "B " 
			\set Staff.shortInstrumentName = "B "
			\new Voice = bass {
				\commonprops
				\set Voice.midiInstrument = "clarinet"
				\bassmelody 
			}
		}
		\new Lyrics = basslyrics \lyricsto bass \text
	>>
}

twostaveschoir = {
	\new ChoirStaff <<
		\new ChordNames { \germanChords \akordy }
		\new Staff = women {
			\clef treble
			\set Staff.instrumentName = \markup { \column { "S " "A " } } 
			\set Staff.shortInstrumentName = \markup { \column { "S " "A " } }
			<<
				\new Voice = soprano {
					\voiceOne
					\commonprops
					\set Voice.midiInstrument = "clarinet"
					\sopranomelody 
				}
				\new Voice = alto {
					\voiceTwo
					\commonprops
					\set Voice.midiInstrument = "english horn"
					\altomelody 
				}
			>>
		}
		\new Lyrics = alllyrics \lyricsto soprano \text
		
		\new Staff = men {
			\clef bass
			\set Staff.instrumentName = \markup { \column { "T " "B " } } 
			\set Staff.shortInstrumentName = \markup { \column { "T " "B " } }
			<<
				\new Voice = tenor {
					\voiceOne
					\commonprops
					\set Voice.midiInstrument = "english horn"
					\tenormelody
				}
				\new Voice = bass {
					\voiceTwo
					\commonprops
					\set Voice.midiInstrument = "clarinet"
					\bassmelody 
				}
			>>
		}
	>>
}

%---------------------------------MIDI---------------------------------
\score {
	\unfoldRepeats \twostaveschoir
	\midi {
		\context {
			\Staff \remove "Staff_performer"
		}
		\context {
			\Voice 
				\consists "Staff_performer"
				\remove "Dynamic_performer"
		}
	}
}

%--------------------------------LAYOUT--------------------------------
\book {
	\score {
		\fourstaveschoir
		\layout { 
			indent = 0\cm 
			\context {
				\Staff \consists "Ambitus_engraver"
			}
		}
	}
	\stanzas
}
