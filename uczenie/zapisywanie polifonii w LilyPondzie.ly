\markup "Przykład zapisywania polifonii."
\markup ""
\markup \wordwrap {
  kilka wyrażeń muzycznych (takich jak np. pojedyncze dźwięki: g''8)
  zapisanych w nawiasach klamrowych jest traktowanych
  jako zdarzenia następujące po sobie. Np. "{" r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' "}"
  jest zamieniane na melodię.
}

\markup "Weźmy polifoniczny fragment zawierający trzy głosy."

\markup \wordwrap {
  Poniżej mamy wyrażenie muzyczne składające się z trzech wyrażeń muzycznych
  z których każde składa się z kilku jeszcze mniejszych wyrażeń muzycznych
  (pojedynczych dźwięków). Wszystko jest w nawiasach klamrowych,
  więc jest ułożone po kolei:
}

{
  { r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  { ees'8 r ees' r d' r d' r }
  { d''8 s c'' s bes' s a' s }
}


\markup \wordwrap {
  Tymczasem myśmy chcieli żeby te trzy głosy były jednocześnie.
  W takim razie zamiast zewnętrznych nawiasów klamrowych użyjmy znaczników jednoczesności:
}

<<
  { r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  { ees'8 r ees' r d' r d' r }
  { d''8 s c'' s bes' s a' s }
>>

\markup \wordwrap {
  Otrzymaliśmy trzy głosy na trzech pięcioliniach, bo jeśli nie określi się
  'rodzaju' wyrażenia, to LilyPond potraktuje to jako coś na osobnej pięciolinii:
  dla każdego z trzech wyrażeń muzyczncyh wewnątrz << >> LilyPond myślał sobie
  \italic {
    'to jest wyrażenie muzyczne. Wyrażenie muzyczne trzeba gdzieś wstawić, a to wyrażenie nie ma
    określonej przynależności.
    Utworzę nową pięciolinię, żeby było gdzie je wstawić'
  } a potem popatrzył na znaczniki << >>
  i stwierdził, że w takim razie te utworzone pięciolinie muszą być równolegle.
}


\markup \wordwrap {
  Tymczasem myśmy chcieli żeby te wyrażenia były na jednej pięciolinii.
  W takim razie najpierw utworzymy sobie pięciolinię, a potem cały ten
  interes wstawimy wewnątrz tej utworzonej pięciolinii.  LilyPond będzie wtedy wiedział,
  że każde z tych wyrażeń ma już przypisaną pięciolinię (wszystkie wyrażenia tę samą),
  więc nie będzie tworzył nowych pięciolinii:
}

\new Staff <<
  { r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  { ees'8 r ees' r d' r d' r }
  { d''8 s c'' s bes' s a' s }
>>

\markup \wordwrap {
  Fajnie, tylko że nuty nie mają tu żadnego kierunku - są wpisane tak,
  jakby były same na pięciolinii, podczas gdy jest ich kilka na raz.
  W takim razie spróbujmy do poszczególnych wyrażeń dodać komendy mówiące
  jak mają się zachowywać nuty (np. voiceOne, w którym ogonki są do góry, voiceTwo itd.):
}

\new Staff <<
  { \voiceOne r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  { \voiceTwo ees'8 r ees' r d' r d' r }
  { \voiceThree d''8 s c'' s bes' s a' s }
>>

\markup \wordwrap {
  Wygląda inaczej, ale nie tak jak trzeba. Dlaczego nie zadziałało?
  Bo wszystkie wyrażenia w nawiasach klamrowych były wstawiane nie tylko na jedną pięciolinię,
  ale też do jednego głosu (do jednego kontekstu Voice).
  Polecenia voiceOne itp. działają na kontekst Voice (a nie na pojedyncze nuty),
  czyli tutaj wydajemy jednocześnie
  trzy sprzeczne polecenia dla jednego kontekstu Voice i program głupieje.
}

\markup \wordwrap {
  W takim razie powiedzmy otwarcie, że każde z tych trzech wyrażeń ma być osobnym Voice'em.
  Wtedy wszystko działa:
}

\new Staff <<
  \new Voice { \voiceOne r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  \new Voice { \voiceTwo ees'8 r ees' r d' r d' r }
  \new Voice { \voiceThree d''8 s c'' s bes' s a' s }
>>

\markup "Żeby było mniej pisania, wprowadzono skrótową notację z \\\, która robi dokładnie to co powyżej:"

\new Staff <<
  { r8 g'' g''  g'' g'' f''16 ees'' f''8 d'' }
  \\
  { ees'8 r ees' r d' r d' r }
  \\
  { d''8 s c'' s bes' s a' s }
>>