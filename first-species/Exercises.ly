\version "2.24.4"
\language "français"

% Global settings

\paper {
  left-margin = 25\mm
  right-margin = 20\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  markup-system-spacing.padding = #6

  ragged-bottom = ##t
  ragged-last-bottom = ##t
}

\header {
  title = "Exercises on First Species Counterpoint"
  subtitle = "With Cantus Firmus by J.J. Fux"
  composer = "A. Sorani-Rozet"
}

\layout {
  \context {
    \Staff
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.X-offset = #-4
  }
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}

% Macros

centered = {
  \once \override NoteColumn.X-offset = #1.5
}

breveStyle = {
  \once \override Staff.TimeSignature.stencil = ##f
  \time 2/1
  \once \override Score.SpacingSpanner.spacing-increment = #4
  \once \override NoteHead.style = #'neomensural
}

num =
#(define-music-function (text music) (string? ly:music?)
#{
  \once \override TextScript.self-alignment-X = #CENTER
  \once \override TextScript.extra-offset = #'(1.0 . 0)
  $music ^\markup \bold \small #text
#})

% Score in D

inDwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "8" {\centered re''1} |
        \num "6" {\centered re} |
        \num "6" {\centered do} |
        \num "8" {\centered re} |
        \num "3" {si2} \num "6" {mi}  |
        \num "8" {\centered fa1} |
        \num "5" {mi2} \num "3" {do} |
        \num "5" {\centered re1} |
        \num "3" {\centered la} |
        \num "5" {si2} \num "6" {dod} |
    
        \breveStyle
        \num "8" {\centered re\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered re'1} |
        \num "2" {\centered fa} |
        \num "3" {\centered mi} |
        \num "4" {\centered re} |
        \num "5" {\centered sol} |
        \num "6" {\centered fa} |
        \num "7" {\centered la} |
        \num "8" {\centered sol} |
        \num "9" {\centered fa} |
        \num "10" {\centered mi} |
    
        \breveStyle
        \num "11" {\centered re\breve}
        \bar"|."
      }
    }
    >>

inDwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered re'1} |
        \num "2" {\centered fa} |
        \num "3" {\centered mi} |
        \num "4" {\centered re} |
        \num "5" {\centered sol} |
        \num "6" {\centered fa} |
        \num "7" {\centered la} |
        \num "8" {\centered sol} |
        \num "9" {\centered fa} |
        \num "10" {\centered mi} |
    
        \breveStyle
        \num "11" {\centered re\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef bass
      \time 4/4
      \relative{
        \num "8" {re,2} \num "5" {sol} |
        \num "3" {re'2} \num "5" {si} |
        \num "6" {\centered sol1} |
        \num "3" {\centered si} |
        \num "10" {\centered mi,}  |
        \num "6" {\centered la} |
        \num "10" {\centered fa} |
        \num "5" {\centered do'} |
        \num "3" {\centered re} |
        \num "3" {\centered dod} |
    
        \breveStyle
        \num "1" {\centered re\breve}
        \bar"|."
      }
    }
    >>

% score in E

inEwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "5" {si'2} \num "8" {mi} |
        \num "13" {la} \num "5" {la,} |
        \num "6" {si} \num "5" {la} |
        \num "13" {la'} \num "12" {sol} |
        \num "12" {mi} \num "13" {fa} |
        \num "5" {mi} \num "4" {re} |
        \num "6" {mi} \num "5" {si} |
        \num "3" {sol} \num "5" {si} |
        \num "5" {do} \num "6" {re} |
    
        \breveStyle
        \num "8" {\centered mi\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered mi'1} |
        \num "2" {\centered do} |
        \num "3" {\centered re} |
        \num "4" {\centered do} |
        \num "5" {\centered la} |
        \num "6" {\centered la'} |
        \num "7" {\centered sol} |
        \num "8" {\centered mi} |
        \num "9" {\centered fa} |
    
        \breveStyle
        \num "10" {\centered mi\breve}
        \bar"|."
      }
    }
    >>

inEwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered mi'1} |
        \num "2" {\centered do} |
        \num "3" {\centered re} |
        \num "4" {\centered do} |
        \num "5" {\centered la} |
        \num "6" {\centered la'} |
        \num "7" {\centered sol} |
        \num "8" {\centered mi} |
        \num "9" {\centered fa} |
    
        \breveStyle
        \num "10" {\centered mi\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef bass
      \time 4/4
      \relative{
        \num "5" {\centered la,1} |
        \num "3" {\centered la} |
        \num "5" {\centered sol} |
        \num "6" {\centered mi} |
        \num "3" {\centered fa} |
        \num "6" {\centered do'} |
        \num "3" {\centered mi} |
        \num "3" {\centered do} |
        \num "3" {\centered re} |
    
        \breveStyle
        \num "1" {\centered mi\breve}
        \bar"|."
      }
    }
    >>

% score in F

inFwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "8" {\centered fa''1} |
        \num "6" {\centered mi} |
        \num "3" {\centered do} |
        \num "6" {\centered re} |
        \num "10" {\centered fa} |
        \num "8" {\centered mi} |
        \num "6" {\centered re} |
        \num "3" {\centered mi} |
        \num "8" {\centered la} |
        \num "6" {\centered re,} |
        \num "6" {\centered mi} |
        
        \breveStyle
        \num "8" {\centered fa\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered fa'1} |
        \num "2" {\centered sol} |
        \num "3" {\centered la} |
        \num "4" {\centered fa} |
        \num "5" {\centered re} |
        \num "6" {\centered mi} |
        \num "7" {\centered fa} |
        \num "8" {\centered do'} |
        \num "9" {\centered la} |
        \num "10" {\centered fa} |
        \num "11" {\centered sol} |
        
        \breveStyle
        \num "12" {\centered fa\breve}
        \bar"|."
      }
    }
    >>

inFwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered fa'1} |
        \num "2" {\centered sol} |
        \num "3" {\centered la} |
        \num "4" {\centered fa} |
        \num "5" {\centered re} |
        \num "6" {\centered mi} |
        \num "7" {\centered fa} |
        \num "8" {\centered do'} |
        \num "9" {\centered la} |
        \num "10" {\centered fa} |
        \num "11" {\centered sol} |
        
        \breveStyle
        \num "12" {\centered fa\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef bass
      \time 4/4
      \relative{
        \num "5" {\centered si,1} |
        \num "8" {\centered sol} |
        \num "6" {\centered do} |
        \num "6" {\centered la} |
        \num "3" {\centered si} |
        \num "3" {\centered do} |
        \num "3" {\centered re} |
        \num "8" {\centered do} |
        \num "5" {\centered re} |
        \num "3" {\centered re} |
        \num "3" {\centered mi} |
        
        \breveStyle
        \num "1" {\centered fa\breve}
        \bar"|."
      }
    }
    >>

% score in G

inGwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "5" {\centered re'1} |
        \num "6" {\centered la'} |
        \num "6" {\centered sol} |
        \num "10" {\centered si} |
        \num "3" {\centered mi,} |
        \num "3" {\centered sol} |
        \num "5" {\centered la} |
        \num "1" {sol2} \num "3" {si} | % mi' sounds better than sol, but doesn't follow the rules of first species counterpoint
        \num "5" {\centered si1} |
        \num "8" {\centered do} |
        \num "5" {\centered la} |
        \num "8" {\centered si} |
        \num "6" {fad2} \num "5" {mi8} \num "6" {fad4.} |
    
        \breveStyle
        \num "14" {\centered sol\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered sol1} |
        \num "2" {\centered do} |
        \num "3" {\centered si} |
        \num "4" {\centered sol} |
        \num "5" {\centered do} |
        \num "6" {\centered mi} |
        \num "7" {\centered re} |
        \num "8" {\centered sol} |
        \num "9" {\centered mi} |
        \num "10" {\centered do} |
        \num "11" {\centered re} |
        \num "12" {\centered si} |
        \num "13" {\centered la} |
    
        \breveStyle
        \num "14" {\centered sol\breve}
        \bar"|."
      }
    }
    >>

inGwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered sol1} |
        \num "2" {\centered do} |
        \num "3" {\centered si} |
        \num "4" {\centered sol} |
        \num "5" {\centered do} |
        \num "6" {\centered mi} |
        \num "7" {\centered re} |
        \num "8" {\centered sol} |
        \num "9" {\centered mi} |
        \num "10" {\centered do} |
        \num "11" {\centered re} |
        \num "12" {\centered si} |
        \num "13" {\centered la} |
    
        \breveStyle
        \num "14" {\centered sol\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef bass
      \time 4/4
      \relative{
        \num "8" {sol,2} \num "6" {si} |
        \num "12" {fa} \num "10" {la} |
        \num "5" {mi'} \num "8" {si} |
        \num "6" {si} \num "5" {do} |
        \num "10" {la} \num "6" {mi'} |
        \num "10" {\centered do1} |
        \num "8" {re2} \num "10" {si} |
        \num "10" {\centered mi1} |
        \num "10" {do2} \num "12" {la} |
        \num "6" {mi'} \num "10" {la,} |
        \num "8" {re} \num "6" {fad} |
        \num "3" {sol} \num "6" {re} |
        \num "5" {re'} \num "3" {fad,} |
    
        \breveStyle
        \num "1" {\centered sol\breve}
        \bar"|."
      }
    }
    >>
    
% score in A

inAwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "8" {\centered la'1} |
        \num "10" {mi'2} \num "8" {do} |
        \num "10" {re} \num "6" {sol,} |
        \num "5" {\centered la1} |
        \num "10" {mi'2} \num "8" {do} |
        \num "3" {sol} \num "5" {si} |
        \num "3" {la} \num "8" {fa'} |
        \num "10" {sol} \num "8" {mi} |
        \num "6" {\centered si1} |
        \num "6" {la2} \num "8" {do} |
        \num "8" {si} \num "6" {sold} |
    
        \breveStyle
        \num "8" {\centered la\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered la1} |
        \num "2" {\centered do} |
        \num "3" {\centered si} |
        \num "4" {\centered re} |
        \num "5" {\centered do} |
        \num "6" {\centered mi} |
        \num "7" {\centered fa} |
        \num "8" {\centered mi} |
        \num "9" {\centered re} |
        \num "10" {\centered do} |
        \num "11" {\centered si} |
    
        \breveStyle
        \num "12" {\centered la\breve}
        \bar"|."
      }
    }
    >>

inAwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered la1} |
        \num "2" {\centered do} |
        \num "3" {\centered si} |
        \num "4" {\centered re} |
        \num "5" {\centered do} |
        \num "6" {\centered mi} |
        \num "7" {\centered fa} |
        \num "8" {\centered mi} |
        \num "9" {\centered re} |
        \num "10" {\centered do} |
        \num "11" {\centered si} |
    
        \breveStyle
        \num "12" {\centered la\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef bass
      \time 4/4
      \relative{
        \num "8" {\centered la,1} |
        \num "10" {\centered la} |
        \num "5" {\centered mi'} |
        \num "8" {\centered re} |
        \num "6" {\centered mi} |
        \num "10" {\centered do} |
        \num "6" {\centered lab'} |
        \num "6" {\centered sol} |
        \num "6" {\centered fa} |
        \num "3" {\centered la} |
        \num "3" {\centered fad} |
    
        \breveStyle
        \num "1" {\centered la\breve}
        \bar"|."
      }
    }
    >>

% score in C

inCwithCFbelow =
    \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "8" {\centered do'''1} |
        \num "6" {\centered sol} |
        \num "12" {\centered re'} |
        \num "15" {\centered mi} |
        \num "12" {\centered re} |
        \num "8" {\centered si} |
        \num "10" {\centered do} |
        \num "6" {\centered fa,} |
        \num "6" {\centered la} |
        \num "3" {\centered sol} |
        \num "6" {\centered si} |
    
        \breveStyle
        \num "8" {\centered do\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered do''1} |
        \num "2" {\centered si} |
        \num "3" {\centered sol} |
        \num "4" {\centered mi} |
        \num "5" {\centered sol} |
        \num "6" {\centered si} |
        \num "7" {\centered la} |
        \num "8" {\centered la} |
        \num "9" {\centered do} |
        \num "10" {\centered mi} |
        \num "11" {\centered re} |
    
        \breveStyle
        \num "12" {\centered do\breve}
        \bar"|."
      }
    }
    >>

inCwithCFabove =
  \new StaffGroup \with {
      systemStartDelimiter = #'SystemStartBracket
      \remove "Span_bar_engraver"
    }<<
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Cantus Firmus"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "1" {\centered do''1} |
        \num "2" {\centered si} |
        \num "3" {\centered sol} |
        \num "4" {\centered mi} |
        \num "5" {\centered sol} |
        \num "6" {\centered si} |
        \num "7" {\centered la} |
        \num "8" {\centered la} |
        \num "9" {\centered do} |
        \num "10" {\centered mi} |
        \num "11" {\centered re} |
    
        \breveStyle
        \num "12" {\centered do\breve}
        \bar"|."
      }
    }
    \new Staff \with {
      instrumentName = \markup \halign #RIGHT "Counterpoint"
      midiInstrument = "choir aahs"
    }{
      \clef treble
      \time 4/4
      \relative{
        \num "12" {\centered fa1} |
        \num "8" {\centered si} |
        \num "6" {\centered si} |
        \num "3" {\centered do} |
        \num "6" {\centered si} |
        \num "10" {\centered sol} |
        \num "8" {\centered la} |
        \num "3" {\centered fa'} |
        \num "8" {\centered do} |
        \num "6" {\centered sol'} |
        \num "3" {\centered si} |
    
        \breveStyle
        \num "1" {\centered do\breve}
        \bar"|."
      }
    }
    >>

% pdf output

\book{
  \bookOutputName "Exercises"
  
  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of D, with c.f. Below"
  }
  
  \score{
    \inDwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of D, with c.f. Above"
  }

  \score{
    \inDwithCFabove
    \layout {}
  }
  
  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of E, with c.f. Below"
  }
  
  \score{
    \inEwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of E, with c.f. Above"
  }

  \score{
    \inEwithCFabove
    \layout {}
  }
  
  \pageBreak

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of F, with c.f. Below"
  }
  
  \score{
    \inFwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of F, with c.f. Above"
  }

  \score{
    \inFwithCFabove
    \layout {}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of G, with c.f. Below"
  }
  
  \score{
    \inGwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of G, with c.f. Above"
  }

  \score{
    \inGwithCFabove
    \layout {}
  }
  
  \pageBreak

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of A, with c.f. Below"
  }
  
  \score{
    \inAwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of A, with c.f. Above"
  }

  \score{
    \inAwithCFabove
    \layout {}
  }
  
  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of C, with c.f. Below"
  }
  
  \score{
    \inCwithCFbelow
    \layout{}
  }

  \markup \vspace #2
  \markup \fill-line {
    \fontsize #1 \bold "In the Mode of C, with c.f. Above"
  }

  \score{
    \inCwithCFabove
    \layout {}
  }
}

% midi output

% in D with c.f. below

\book{
  \bookOutputName "Exercises-in_D_cf_below"

  \score{
    \inDwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in D with c.f. above

\book{
  \bookOutputName "Exercises-in_D_cf_above"
  
  \score{
    \inDwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}

% in E with c.f. below

\book{
  \bookOutputName "Exercises-in_E_cf_below"

  \score{
    \inEwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in E with c.f. above

\book{
  \bookOutputName "Exercises-in_E_cf_above"
  
  \score{
    \inEwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}

% in F with c.f. below

\book{
  \bookOutputName "Exercises-in_F_cf_below"

  \score{
    \inFwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in F with c.f. above

\book{
  \bookOutputName "Exercises-in_F_cf_above"
  
  \score{
    \inFwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}

% in G with c.f. below

\book{
  \bookOutputName "Exercises-in_G_cf_below"

  \score{
    \inGwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in G with c.f. above

\book{
  \bookOutputName "Exercises-in_G_cf_above"
  
  \score{
    \inGwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}

% in A with c.f. below

\book{
  \bookOutputName "Exercises-in_A_cf_below"

  \score{
    \inAwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in A with c.f. above

\book{
  \bookOutputName "Exercises-in_A_cf_above"
  
  \score{
    \inAwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}

% in C with c.f. below

\book{
  \bookOutputName "Exercises-in_C_cf_below"

  \score{
    \inCwithCFbelow
    \midi {
      \tempo 1 = 60
    }
  }
}

% in C with c.f. above

\book{
  \bookOutputName "Exercises-in_C_cf_above"
  
  \score{
    \inCwithCFabove
    \midi {
      \tempo 1 = 60
    }
  }
}