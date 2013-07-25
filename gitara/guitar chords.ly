\version "2.17.21"

cMaj = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-o;4-2-2;5-3-3;6-o;"
}

cMajBassG = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-o;4-2-2;5-3-4;6-3-3;"
}

cMajSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-3-4;4-2-2;5-3-3;6-o;"
}

dMin = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-3-3;3-2-2;4-o;5-o;6-x;"
}

dMinBassf = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-3-4;3-2-2;4-3-3;5-o;6-x;"
}

dMinBassF = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-2;2-3-4;3-2-3;4-o;5-o;6-1-1;"
}

dMaj = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-2;2-3-3;3-2-1;4-o;5-o;6-x;"
}

dMajSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-3;2-1-1;3-2-2;4-o;5-o;6-x;"
}

dMajBassFis = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-3;2-3-4;3-2-2;4-o;5-o;6-2-1;"
}

eMin = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-o;4-2-3;5-2-2;6-o;"
}

eMinSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-3-4;3-o;4-2-3;5-2-2;6-o;"
}

eMaj = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-1-1;4-2-3;5-2-2;6-o;"
}

eMajSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-3-4;3-1-1;4-2-3;5-2-2;6-o;"
}

gMaj = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-3-3;3-o;4-o;5-2-1;6-3-2;"
}

gMajSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-o;3-o;4-o;5-2-2;6-3-3;"
}

gMajBassf = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-o;3-o;4-3-3;5-2-1;6-3-2;"
}

aMin = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-2-3;4-2-2;5-o;6-o;"
}

aMinSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-1-1;3-2-3;4-2-2;5-o;6-o;"
}

aMaj = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-2-3;3-2-2;4-2-1;5-o;6-o;"
}

bMinSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-4;2-o;3-2-3;4-o;5-2-2;6-x;"
}

bMajSeventh = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-4;2-o;3-2-3;4-1-1;5-2-2;6-x;"
}
