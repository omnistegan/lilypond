\language "english"
\version "2.18.2"
\pointAndClickOff
\paper {
  #(set-paper-size "a4")
  %paper-width = 525\cm
  %paper-height = 10\cm
}
\header {
  title = "Piano Sonata No. 1"
  composer = "Ludwig van Beethoven"
  opus = "Op. 2, No. 1"
  dedication = "Joseph Haydn gewidmet."
  tagline = "Lilypond score constructed by Graham Bouvier https://github.com/omnistegan"
}


conEspress = #(make-dynamic-script
    (markup #:left-align #:normal-text #:italic "con espress."))

upper = \relative f' {
  \clef treble
  \key f \minor
  \time 2/2
  \tempo "Allegro" 2 = 112

  s2. c4\p                                                              |
  f-. af-. c-. f-.                                                      |
  af4.( \tuplet 3/2 { g16 f e } f4-. ) r4                               |
  g,-. c-. e-. g-.                                                      |
  bf4.( \tuplet 3/2 { af16 g f } g4-. ) r4                              |
  \grace c,16\sf( af'4. )( \tuplet 3/2 { g16 f e } f4-. ) r4            |
  %5
  \grace c16\sf( bf'4. )( \tuplet 3/2 { af16 g f } g4-. ) r4            |
  <c, f af c>2\arpeggio\ff bf'8\>( af g f\! )                           |
  \grace { e16 f g } f4\p( e ) r4\fermata r4                            |
  R1                                                                    |
  R1                                                                    |
  %10
  <<
  {
  f4\rest f8\rest \tuplet 3/2 {ef16( df c} df4-. ) df4-.                          |
  df1~                                                                  |
  df4.( \tuplet 3/2 {ef16 df c} df4-. ) df-.                            |
  f4\rest f8\rest \tuplet 3/2 {df16( c b} c4-. ) c4-.                             |
  c( bf2\espressivo af4                                                 |
  g4-. )
  }
  \\
  {
  af1~                                                                  |
  af4. \tuplet 3/2 {bf16 (af g} af4-.) af4-.                            |
  g1                                                                    |
  af1                                                                   |
  f1                                                                    |
  }
  >>
  %15
  ef'4( df ) c~                                                         |
  c( bf2\espressivo af4                                                 |
  g-. ) <ef ef'>\f( <df df'> <c c'>~ )                                  |
  <c c'> <bf bf'>2( <af af'>4                                           |
  <g g'> ) r4 r4 ff''\p(                                                |
  %20
  ef df bf g )                                                          |
  ff4.\sf( ef8 af4-. ) ff'4(                                            |
  ef df bf g )                                                          |
  ff4.\sf( ef8 af4-. ) ff'4(                                            |
  ef df bf g )                                                          |
  %25
  r8 g( bf af ) r8 a( c bf )                                            |
  r8 b( df c ) r8 d\<( af'\> d,\! )                                     |
  ef4 r4 r8 d\<( af'\> d,\! )                                           |
  ef4 r4 r8 g\<( ff'\> g,\! )                                           |
  af4 r4 r8 g\<( ff'\> g,\! )                                           |
  %30
  r8\< g( bf af ) r8 a( c bf )                                          |
  r8 b( df c ) r8 c( ef df )                                            |
  r8\f d( f ef df c bf af                                               |
  g f ef df c bf af g                                                   |
  f\p ef d ef d ef d ef                                                 |
  %35
  d ef f ef d ef f ef )                                                 |
  r8\f af'( f' ef df c bf af                                            |
  g f ef df c bf af g                                                   |
  f\p ef df c
  \change Staff = "lower"
  bf^[af g f]                                                           |
  ef^[f g af] bf^[c df bf]                                              |
  %40
  \once \stemUp af4 )
  \change Staff = "upper"
  r4 \grace d16( cf'4. )( bf8\conEspress )                              |
  af2 g4.( ef'8 )                                                       |
  ef4\sf( af, ) \grace d,16( cf'4. )( bf8 )                             |
  af2 g4.( ef'8 )                                                       |
  ef4\sf( af, ) \grace d16( cf'4. )( bf8 )                              |
  %45
  af2 g4.( ef'8 )                                                       |
  <df,, ef g df' g ef'>1\ff\>                                           |
  <c ef af c ef af>4\p r4 r4 \bar ":|."

  % End of exposition

  ef4\p                                                                 |
  af-. c-. ef-. af-.                                                    |
  c4.( \tuplet 3/2 {bf16 af g} af4-. ) r4                               |
  %50
  \grace df,16( df'4. )( \tuplet 3/2 {c16 bf a} bf4-. ) r4              |
  bf,-. df-. g-. bf-.                                                   |
  \grace df,16( df'4. )( \tuplet 3/2 {c16 bf a} bf4-. ) r4              |
  \grace df,16( df'4.\< )( \tuplet 3/2 {c16 bf a} bf4-. ) r4\!          |
  a r4 r4 gf(                                                           |
  %55
  f ef c a )                                                            |
  gf4.\sf( f8 bf4-. ) gf'4(                                             |
  f ef c a )                                                            |
  gf4.\sf( f8 bf4-. ) gf'4(                                             |
  f ef c a )                                                            |
  %60
  r8 a( c bf ) r8 bf( df c )                                            |
  r8 c( ef df ) r8( b df c )                                            |
  b4 r4 r4 af'4(                                                        |
  g f d b )                                                             |
  af4.\sf( g8 c4-. ) af'4(                                              |
  %65
  g f d b )                                                             |
  af4.\sf( g8 c4-. ) f,8 d                                              |
  f d f d f d f d                                                       |
  <<
  {
  r4 b'( c ) r4                                                          |
  R1                                                                    |
  %70
  r4 a( bf ) r4                                                         |
  R1                                                                    |
  r2 g2                                                                 |
  r2 af\sf                                                              |
  r2 f                                                                  |
  %75
  r2 g\sf                                                               |
  r2 e                                                                  |
  r2 f\sf                                                               |
  r2 f\sf                                                               |
  }
  \\
  {
  f8 d f d ef c ef c                                                    |
  ef c ef c ef c ef c                                                   |
  %70
  ef c ef c df bf df bf                                                 |
  df bf df bf df bf df bf                                               |
  df bf df bf df bf df bf                                               |
  c af ef' af, ef' af, ef' af,                                          |
  df af df af df af df af                                               |
  %75
  df g df g df g df g                                                   |
  c, g c g c g c g                                                      |
  af f c' f, c' f, c' f,                                                |
  df' f, df' f, df' f, df' f,                                           |
  }
  >>
  d'8 f, <af d f> f <af d f> f <af d f> f                               |
  %80
  <g c e>4 r4 r4 c'(                                                    |
  af-. ) r4 r4 f'(                                                      |
  e-. ) r4 r4 c'(                                                       |
  f,-. ) r4 \set doubleSlurs = ##t <f f'>2\sf(                          |
  <e e'>4-. ) \set doubleSlurs = ##f r4 r4 \afterGrace c\trill( {b16 c} |
  %85
  af4-. ) af-. r4 \afterGrace f'\trill( {e16 f}                         |
  e4-. ) e-. r4 \afterGrace c'\trill( {b16 c}                           |
  f,4-. ) f-. r4 \set doubleSlurs = ##t <f f'>4(                        |
  <e e'>4-. ) <e e'>-. r4 <df df'>(                                     |
  <c c'>-. ) <c c'>-. r4\decresc <f f'>(                                |
  %90
  <e e'>4-. ) <e e'>-. r4 <df df'>(                                     |
  <c c'>-. ) <c c'>-. r4 <f f'>(                                        |
  <e e'>\! ) r4 r2                                                      |
  R1 \set doubleSlurs = ##f                                             |
  r4 r8 \tuplet 3/2 {af,16\pp( gf f} gf4-. ) r4                         |
  %95
  r4 r8 \tuplet 3/2 {ef''16( df c} df4-. ) r4                           |
  r4 r8 \tuplet 3/2 {f,,16( e d} e4-. ) r4                              |
  r4 r8 \tuplet 3/2 {df''16( c b} c4-. ) r4                             |
  r4 r8 \tuplet 3/2 {ef,,16( d c} d4-. ) r4                             |
  r4 r8 \tuplet 3/2 {c''16( bf a} bf4-. ) r4                            |
  %100
  f,-.\f af-. c-. f-.                                                   |
  af4.\sf( \tuplet 3/2 {g16 f e} f4 ) r4                                |
  g,4-. c-. e-. g-.                                                     |
  bf4.-.\sf( \tuplet 3/2 {a16 g f} g4-. )r4                             |
  \grace c,16( af'4. )( \tuplet 3/2 {g16 f e} f4-. ) r4                 |
  %105
  \grace c16( bf'4. )( \tuplet 3/2 {af16 g f} g4-. ) r4                 |
  <c, f af c>2\ff\arpeggio bf'8( af g f )                               |
  \grace {e16( f g} f4 )( e ) r4\fermata r4                             |
  R1                                                                    |
  R1                                                                    |
  %110
  bf'4.\p( \tuplet 3/2 {af16 gf f} gf4-. ) gf                           |
  <<
  {
  gf1~                                                                  |
  gf4. \tuplet 3/2 {gf16( f e} f4-. ) f                                 |
  f1                                                                    |
  r4 r8 \tuplet 3/2 {g16( f e} f4 ) g(                                  |
  %115
  af e f b, )                                                           |
  }
  \\
  {
  r4 r8 \tuplet 3/2 {df16( c b} c4-. ) c-.                              |
  c1~                                                                   |
  c4. \tuplet 3/2 {c16( bf a} bf4-. ) bf-.                              |
  b1                                                                    |
  %115
  s1                                                                    |
  }
  >>
  c4\<( e f g                                                           |
  af\> e f b,\! )                                                       |
  <e, c'> r4 r4 df'(                                                    |
  c bf g e )                                                            |
  %120
  df4.\sf( c8 f4-. ) df''(                                              |
  c bf g e)                                                             |
  df4.\sf( c8 f4-. ) df' (                                              |
  c bf g e )                                                            |
  r8 e8( g f ) r8 f( af g)                                              |
  %125
  r8 g( bf af) r8 b\<( f'\> b,\! )                                      |
  c4 r4 r8 b\<( f'\> b,\! )                                             |
  c4 r4 r8 e,\<( df'\> e,\! )                                           |
  f4 r4 r8 e\<( df'\> e,\! )                                            |
  r8\cresc e( g f ) r8 f( af g )                                        |
  %130
  r8 g( bf af ) r8 a( c bf )                                            |
  r8\ff c( f ef df c bf af                                              |
  g f ef df c bf af g                                                   |
  f e df c b c b c                                                      |
  b c df c b c df c )                                                   |
  %135
  r8\ff c''( f ef df c bf af                                            |
  g f ef df c bf af g                                                   |
  f e df c b c b c                                                      |
  b\p c df c c bf af g )                                                |
  f4 r4 af'4.( g8 ) \conEspress                                         |
  %140
  f2 e4.( c'8 )                                                         |
  c4\sf( f, ) af4.( g8 )                                                |
  f2 e4.( c'8 )                                                         |
  c4\sf( f, ) \grace b16( af'4. )( g8                                   |
  f2 ) e4.( c'8 )                                                       |
  %145
  <c, ef c'>1\ff                                                        |
  <bf df f>4 r4 r4 r8 <bf df bf'>8                                      |
  <bf df bf'>1\ff                                                       |
  <af c ef>4 r4 r4 <af c af'>4-.\sf                                     |
  <g bf df>-. <g bf g'>-.\sf <f af c>-. <f af f'>-.\sf                  |
  %150
  <f g df' f>-.\ff r4 <e g bf c e>-. r4                                 |
  <f af c f>-. r4 r4\fermata s4                                         |
}

lower = \relative f, {
  \clef bass
  \key f \minor
  \time 2/2
  \tempo "Allegro" 2 = 112

  s2. r4                                                                |
  R1                                                                    |
  r4\p <f' af c> <f af c> <f af c>                                      |
  <e g bf c> r4 r2                                                      |
  r4 <e g bf c> <e g bf c> <e g bf c>                                   |
  r4 <f af c> <f af c> <f af c>                                         |
  %5
  r4 <g bf e> <g bf e> <g bf e>                                         |
  r4 <af c f> r4 <bf df g>                                              |
  r4 <c g'> r4\fermata g,\p                                             |
  c-. ef-. g-. c-.                                                      |
  ef4.( \tuplet 3/2 {d16 c b} c4-. ) c-.                                |
  %10
  <c f>1                                                                |
  <bf f'>                                                               |
  <bf ef>                                                               |
  <af ef'>                                                              |
  df2 df2                                                               |
  %15
  ef4 r4 r4 <c ef>4                                                     |
  <df f>2 <d f>                                                         |
  ef4 r4 r4 <c, ef>4                                                    |
  <df f>2 <d f>                                                         |
  ef8 ef' ef, ef' ef, ef' ef, ef'                                       |
  %20
  ef, ef' ef, ef' ef, ef' ef, ef'                                       |
  <<{df2( c4 ) s4}\\{ef,4 ef ef8 ef' ef, ef'}>>                         |
  ef, ef' ef, ef' ef, ef' ef, ef'                                       |
  <<{df2( c4 ) s4}\\{ef,4 ef ef8 ef' ef, ef'}>>                         |
  ef, ef' ef, ef' df ef df ef                                           |
  %25
  c ef c ef g, ef' g, ef'                                               |
  af, ef' af, ef' f, d' af d                                            |
  ef, ef' g, ef' f, d' af d                                             |
  ef, ef' g, ef' df, bf' ff bf                                          |
  c, af' ef af df, bf' ff bf                                            |
  %30
  c, af' ef af g, g' ef g                                               |
  af, af' ef af bf, bf' ef, bf'                                         |
  c,4 ef2\sf af4                                                        |
  df,4 f2\sf bf4                                                        |
  ef,4 af2\sf c4                                                        |
  %35
  df( bf g df )                                                         |
  c, ef2\sf af4                                                         |
  df, f2\sf bf4                                                         |
  ef, af2\sf \stemDown c4                                               |
  df_( bf f ef )                                                        |
  %40
  af \stemNeutral af'-. r4 <d, f af cf>-.                               |
  r4 <ef af c>-. r4 <ef bf' df>-.                                       |
  r4 <af c>-. r4 <d, f af cf>-.                                         |
  r4 <ef af c>-. r4 <ef bf' df>-.                                       |
  r4 <af c>-. r4 \clef "treble" <d f af cf>-.                           |
  %45
  r4 <ef af c>-. r4 <ef bf' df>-. \clef "bass"                          |
  <af, bf>1                                                             |
  af4 r4 r4 \bar ":|."

  % End of exposition

  r4                                                                    |
  R1                                                                    |
  r4\p <af c ef> <af c ef> <af c ef>                                    |
  %50
  r4 <g bf df ef> <g bf df ef> <g bf df ef>                             |
  R1                                                                    |
  r4 <g bf df e> <g bf df e> <g bf df e>                                |
  r4 <gf bf df e> <gf bf df e> <gf bf df e>                             |
  f8\fp f' f, f' f, f' f, f'                                            |
  %55
  f, f' f, f' f, f' f, f'                                               |
  <<{ef2( df4 ) s4}\\{f,4 f f8 f' f, f'}>>                              |
  f, f' f, f' f, f' f, f'                                               |
  <<{ef2( df4 ) s4}\\{f,4 f f8 f' f, f'}>>                              |
  f, f' f, f' ef f ef f                                                 |
  %60
  df\< f df f c f c f                                                   |
  bf, f' bf, f' af, fs' af, fs'                                         |
  g,\fp g' g, g' g, g' g, g'                                            |
  g, g' g, g' g, g' g, g'                                               |
  <<{f2( ef4 ) s4}\\{g,4 g g8 g' g, g'}>>                               |
  %65
  g, g' g, g' g, g' g, g'                                               |
  <<
  {
  f2( ef4 ) s4                                                          |
  s1                                                                    |
  }
  \\
  {
  g,4 g g af(                                                           |
  g f d b )                                                             |
  }
  >>
  af4.( g8 ) c4-. gf'(                                                  |
  f ef c a )                                                            |
  %70
  gf4.\sf( f8 ) bf4-. ff'(                                              |
  ef df bf g )                                                          |
  ff( ef2 ) ef'4\sf~                                                    |
  ef c2 c,4~                                                            |
  c df2 df'4\sf~                                                        |
  %75
  df bf2 bf,4~                                                          |
  bf c2 c'4\sf~                                                         |
  c af2 af,4                                                            |
  r4 bf2 bf'4                                                           |
  r4 b,2 b'4                                                            |
  %80
  c,8 c' e c c e c e                                                    |
  f c f c f c af' c,                                                    |
  g' c, g' c, g' c, bf' c,                                              |
  af' c, c' c, b' c, d' c,                                              |
  c' c, e c e c g' c,                                                   |
  %85
  f c f c f c af' c,                                                    |
  g' c, g' c, g' c, bf' c,                                              |
  af' c, c' c, b' c, d' c,                                              |
  c' c, c' c, bf' c, bf' c,                                             |
  af' c, c' c, b' c, d' c,                                              |
  %90
  c' c, c' c, bf' c, bf' c,                                             |
  af' c, c' c, b' c, d' c,                                              |
  c'4-.\pp ( c-. c-. c-. )                                              |
  c-. ( c-. c-. c-. )                                                   |
  <c df> <c df> <c df> <c df>                                           |
  %95
  <bf df> <bf df> <bf df> <bf df>                                       |
  <bf c> <bf c> \cresc <bf c> <bf c>                                    |
  <af c> <af c> <af c> <af c>                                           |
  <bf af> <bf af> <bf af> <bf af>                                       |
  <g bf e> <g bf e> <g bf e> <g bf e>                                   |
  %100
  <f af c>\f r4 r2                                                      |
  r4 <f af c> <f af c> <f af c>                                         |
  <e g bf c> r4 r2                                                      |
  r4 <e g bf c> <e g bf c> <e g bf c>                                   |
  <f af c>2 r2                                                          |
  %105
  <g bf e>2 r2                                                          |
  <af c f>4 r4 <bf df g> r4                                             |
  <c g'>4 r4 r4\fermata c,\p                                            |
  f-. af-. c-. f-. \clef "treble"                                       |
  af4.( \tuplet 3/2 {g16 f e} f4-. ) f-.                                |
  %110
  <f gf>1                                                               |
  <ef gf>1                                                              |
  <ef a>1                                                               |
  <df f>1                                                               |
  <<
  {
  f2. e4(                                                               |
  %115
  f g af f )                                                            |
  e( g f e                                                              |
  f bf af f )                                                           |
  }
  \\
  {
  d1~                                                                   |
  %115
  d1                                                                    |
  c1~                                                                   |
  c2 df2 \clef "bass"                                                   |
  }
  >>
  c,8 c' c, c' c, c' c, c'                                              |
  c, c' c, c' c, c' c, c'                                               |
  %120
  <<{bf2( af4 ) s4}\\{c,4 c c8 c' c, c'}>>                              |
  c, c' c, c' c, c' c, c'                                               |
  <<{bf2( af4 ) s4}\\{c,4 c c8 c' c, c'}>>                              |
  c, c' c, c' bf c bf c                                                 |
  af f' c f g, e' bf e                                                  |
  %125
  f, c' af c df, b' f b                                                 |
  c, c' e, c' df, b' f b                                                |
  c, c' e, c' bf, g' df g                                               |
  af, f' c f bf, g' df g                                                |
  af, f' c f e, e' c e                                                  |
  %130
  f, f' c f g, g' c, g'                                                 |
  af,4 c2\sf f4                                                         |
  bf, df2\sf g4                                                         |
  c,4 f2\sf af4                                                         |
  bf( g e bf )                                                          |
  %135
  af4 c2\sf f4                                                          |
  bf, df2\sf g4                                                         |
  c,4 f2\sf af4                                                         |
  r4 c,, c c                                                            |
  f f'-. r4 <df f af b>-.                                               |
  %140
  r4 <c f af c>-. r4 <c g' bf>-.                                        |
  r4 <f af>-. r4 <df f af b>-.                                          |
  r4 <c f af c>-. r4 <c g' bf>-.                                        |
  r4 <f af>-. r4 \clef "treble" <df' f af b>-.                          |
  r4 <c f af c>-. r4 \clef "bass" <bf c g'>-.                           |
  %145
  <a c f>1                                                              |
  <bf df f>4 r4 r4 r8 <bf df f>8                                        |
  <g bf ef>1                                                            |
  <af c ef>4 r4 r4 <f df'>-.                                            |
  <g df'>-. <e c'>-. <f c'>-. <df df'>-.                                |
  %150
  <bf df g bf>-. r4 <c e g c>-. r4                                      |
  <f, af c f>-. r4 r4\fermata s4 \bar "|."                              |
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"1. "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}