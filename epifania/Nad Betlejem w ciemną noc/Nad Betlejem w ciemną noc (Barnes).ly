\version "2.14.1"
\pointAndClickOff
\header	{
	title = "Nad Betlejem w ciemną noc"
	subtitle = \markup \italic "Les Anges dans nos campagnes"
	subsubtitle = \markup { "tradycyjna kolęda francuska (XVI wiek), znana też jako" \italic "Gloria" }
	arranger = "opr. Edward Shippen Barnes"
}
commonprops = {
	\autoBeamOff
	\key f \major
	\time 4/4
	\tempo 4 = 108
	\set Score.tempoHideNote = ##t
}
\paper { 
	page-count = #1
	ragged-last-bottom = ##f	
    top-markup-spacing #'basic-distance = 3
    markup-system-spacing #'basic-distance = 16
    system-system-spacing #'basic-distance = 15
  %  \include "EpifaniaHeaders3.ily"
}
#(set-global-staff-size 18)

\include "miscellaneous.ily"
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
	a4 a a c c4. bes8 a2
	a4 g a c a4. g8 f2
	% 5
	a4 a a c c4. bes8 a2
	a4 g a c a4. g8 f2
	\repeat volta 2 {
		c'2( d8[ c bes a]
		bes2 c8[ bes a g]
		a2 bes8[ a g f]
		g4.) c,8 c2
		f4 g a bes
	}
	\alternative {
		{ a2 g2 }
		{ a2( g) f1 \bar "|." }
	} 
}
altomelody = \relative f' {	
	f4 f e e g e f2
	f4 e f f f e f2
	% 5
	f4 f e e f g f2
	f4 e f f f e f2
	\repeat volta 2 {
		f4( a8[ g] f2~
		f4 g8[ f] e2~
		e4 f8[ e] d2
		c4.) c8 c2
		c4 e f g
	}
	\alternative {
		{ f2 e2 }
		{ f2( e) c1 \bar "|." }
	}
}
tenormelody = \relative c'{
	c4 c c c d c c2
	c4 c c c c4. bes8 a2 
	% 5
	c4 c c c d c c2 |
	c4 c c c c4. bes8 a2 
	\repeat volta 2 {
		a2( d~ d c~
		c bes g4) f e2
		f4 c' c d
	}
	\alternative {
		{ c2 c2 }
		{ c2.( bes4) a1 \bar "|." }
	}
}
bassmelody = \relative f {
	f4 f a a g c, f2
	f4 c f a c c, f2
	% 5
	f4 f a a d, e f2
	f4 c f a,8[ bes] c4 c f2
	\repeat volta 2 {
		f2( d4 f g2 c,4 e
		f2 bes,4 d e) d c( bes)
		a c f bes,
	}
	\alternative {
		{ c2 c2 }
		{ c1 f \bar "|." }
	}
}
akordy = \chordmode {
	f2 a2:m c2:sus2 f2 f4 c4 f2 f1
	f2 a2:m d4:m7 c4 f2 f4 c4 f2 f1
	\repeat volta 2 {f2 d:m g:m c f bes c1 f4 c f g:m }
	\alternative { {f2 c} {f2 c:7 f}}
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode { \set stanza = "1. "
	Nad Be -- tle -- jem w_cie -- mną \rightyy noc
	śpie -- wał pieśń a -- nio -- łów \rightyy chór.
	Ich ra -- do -- sny, cud -- ny \rightyy głos
	od -- bi -- ja -- ło e -- cho \rightyy gór.
	Glo -- ri -- a in ex -- cel -- sis De -- o! De -- o!
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
				\vspace #0.2
				\line {
					"3. "
					\column {
						"Do Betlejem prędko śpiesz, zostaw stada pośród gór,"
						"gdyż anielska głosi wieść, że się tam narodził Król."
					}
				}
				\vspace #0.2
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
