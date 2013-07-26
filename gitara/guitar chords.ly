\version "2.17.21"

cMaj = \markup \general-align #Y #0 {
  C
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-o;4-2-2;5-3-3;6-o;"
}

cMajBassG = \markup \general-align #Y #0 {
  \concat { C \lower #0.7 \teeny G }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-o;4-2-2;5-3-4;6-3-3;"
}

cMajSeventh = \markup \general-align #Y #0 {
  \concat { C \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-3-4;4-2-2;5-3-3;6-o;"
}

dMin = \markup \general-align #Y #0 {
  d
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-3-3;3-2-2;4-o;5-o;6-x;"
}

dMinBassf = \markup \general-align #Y #0 {
  \concat { d \lower #0.7 \teeny f }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-3-4;3-2-2;4-3-3;5-o;6-x;"
}

dMinBassF = \markup \general-align #Y #0 {
  \concat { d \lower #0.7 \teeny F }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-2;2-3-4;3-2-3;4-o;5-o;6-1-1;"
}

dMaj = \markup \general-align #Y #0 {
  D
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-2;2-3-3;3-2-1;4-o;5-o;6-x;"
}

dMajSeventh = \markup \general-align #Y #0 {
  \concat { D \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-3;2-1-1;3-2-2;4-o;5-o;6-x;"
}

dMajBassFis = \markup \general-align #Y #0 {
  \concat { D \lower #0.7 \teeny Fis }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-3;2-3-4;3-2-2;4-o;5-o;6-2-1;"
}

eMin = \markup \general-align #Y #0 {
  e
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-o;4-2-3;5-2-2;6-o;"
}

eMinSeventh = \markup \general-align #Y #0 {
  \concat { e \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-3-4;3-o;4-2-3;5-2-2;6-o;"
}

eMaj = \markup \general-align #Y #0 {
  E
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-1-1;4-2-3;5-2-2;6-o;"
}

eMajSeventh = \markup \general-align #Y #0 {
  \concat { E \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-3-4;3-1-1;4-2-3;5-2-2;6-o;"
}

gMaj = \markup \general-align #Y #0 {
  G
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-3-3;3-o;4-o;5-2-1;6-3-2;"
}

gMajSeventh = \markup \general-align #Y #0 {
  \concat { G \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-o;3-o;4-o;5-2-2;6-3-3;"
}

gMajBassf = \markup \general-align #Y #0 {
  \concat { G \lower #0.7 \teeny f }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-o;3-o;4-3-3;5-2-1;6-3-2;"
}

gMajPinky = \markup \general-align #Y #0 {
  G
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-o;3-o;4-o;5-2-2;6-3-3;"
}

aMin = \markup \general-align #Y #0 {
  a
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-2-3;4-2-2;5-o;6-o;"
}

aMinSeventh = \markup \general-align #Y #0 {
  \concat { a \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-1-1;3-2-3;4-2-2;5-o;6-o;"
}

aMaj = \markup \general-align #Y #0 {
  A
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-2-3;3-2-2;4-2-1;5-o;6-o;"
}

bMinSeventh = \markup \general-align #Y #0 {
  \concat { h \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-4;2-o;3-2-3;4-o;5-2-2;6-x;"
}

bMajSeventh = \markup \general-align #Y #0 {
  \concat { H \raise #0.7 \teeny 7 }
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-4;2-o;3-2-3;4-1-1;5-2-2;6-x;"
}
