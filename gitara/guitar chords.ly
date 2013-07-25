\version "2.17.21"

cMajStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-o;4-2-2;5-3-3;6-o;"
}

dMinStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-1-1;2-3-3;3-2-2;4-o;5-o;6-x;"
}

dMajStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-2-2;2-3-3;3-2-1;4-o;5-o;6-x;"
}

eMinStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-o;4-2-3;5-2-2;6-o;"
}

eMajStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-o;3-1-1;4-2-3;5-2-2;6-o;"
}

aMinStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-1-1;3-2-3;4-2-2;5-o;6-o;"
}

aMajStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-o;2-2-3;3-2-2;4-2-1;5-o;6-o;"
}

gMajStd = \markup {
  \override #'(fret-diagram-details . (
                                       (orientation . landscape)
                                       (string-thickness-factor . 0.2)
                                       (finger-code . in-dot)
                                       ;(dot-color . white)
                                       (dot-radius . 0.35)
                                       (dot-position . 0.6)))
  \fret-diagram #"s:1.5;1-3-4;2-3-3;3-o;4-o;5-2-1;6-3-2;"
}
