\NeedsTeXFormat{LaTeX2e}

% This style is based partly on University of York style by J.L.Jacob http://www-users.cs.york.ac.uk/~jeremy/
\ProvidesClass{JPRCSReport}[2014/04/01 V0.05 Jens Raaby]

% Koma-script report style
\PassOptionsToPackage{twoside}{typearea}
\LoadClass[11pt,a4paper,twoside,abstraction,numbers=noenddot,DIV=11,BCOR=10mm,headinclude=true,footinclude=false]{scrreprt}


\RequirePackage[utf8]{inputenc} 
\RequirePackage[T1]{fontenc} % prevents < in text mode turning into
\RequirePackage{textcomp}    % !', etc
\RequirePackage[sc,osf]{mathpazo} % Palatino font
\RequirePackage{courier} % nicer typewriter-style fonts
\RequirePackage[scaled=.9]{helvet} % nice san serif fonts
\RequirePackage{microtype} % micro-typographical extensions for
                           % pdf(e)(la)tex
\RequirePackage[british]{babel} % British hyphenation patterns, etc.
\RequirePackage{fixltx2e}
\RequirePackage{ifthen}

\pagestyle{headings}
\renewcommand{\partpagestyle}{empty}

% Reference control
\RequirePackage[numbers,sort&compress,square,comma]{natbib}
\bibliographystyle{IEEEtranN}

%\typearea[current]{calc} % force page layout recalculation after
                         % changing all the fonts
                         
% Uncomment for draft date                         
%\date{\fbox{\Huge DRAFT PROCESSED \today}}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx,subcaption,caption}
\RequirePackage{eso-pic} % \AddToShipoutPicture
\RequirePackage[export]{adjustbox}[2011/08/13]
\RequirePackage{placeins}


\RequirePackage[pdfusetitle]{hyperref}% automatic hyperlinks, etc
\RequirePackage[all]{hypcap}% improve link placement in floats
\hypersetup{%
  pdfstartview={Fit}%
}
\urlstyle{sf}


\renewcommand*{\Itemautorefname}{Item}
\renewcommand*{\chapterautorefname}{Chapter}
\renewcommand*{\sectionautorefname}{Section}
\renewcommand*{\subsectionautorefname}{Subsection}
\renewcommand*{\subsubsectionautorefname}{Subsubsection}
\renewcommand*{\paragraphautorefname}{Paragraph}
\renewcommand*{\Hfootnoteautorefname}{Footnote}


% this is JLJ's stuff for abstracts and acknowledgements
\let\old@abstract\abstract
\let\endold@abstract\endabstract
\renewcommand{\abstract}[1]{\newcommand{\JPRREPORT@abstract}{#1}}
\renewcommand{\endabstract}{}



\let\old@maketitle=\maketitle
\renewcommand*{\maketitle}{%

\AddToShipoutPicture*{\put(0,0){\includegraphics*[viewport=0 0 700 600]{nat-farve}}}
\AddToShipoutPicture*{\put(0,602){\includegraphics*[viewport=0 600 700 1600]{nat-farve}}}
\AddToShipoutPicture*{\put(0,0){\includegraphics*{nat-en}}}


  \old@maketitle%

   \microtypesetup{protrusion=false}%
  \tableofcontents%  
  \microtypesetup{protrusion=true}%
}

\AtBeginDocument{%
  \nonfrenchspacing%
}
