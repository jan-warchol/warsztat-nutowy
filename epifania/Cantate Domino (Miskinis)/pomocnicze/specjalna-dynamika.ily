\version "2.16.1"

piuf =
#(make-dynamic-script
  (markup #:hspace 0
          #:translate '(-10 . 0)
          #:line (#:normal-text
                  #:italic "più"
                  #:dynamic "f")))

menof=
#(make-dynamic-script
  (markup #:hspace 0
          #:translate '(-15 . 0)
          #:line (#:normal-text
                  #:italic "meno"
                  #:dynamic "f")))

subp =
#(make-dynamic-script
  (markup #:hspace 0
          #:translate '(-10 . 0)
          #:line (#:normal-text
                  #:italic "sub"
                  #:dynamic "p")))
