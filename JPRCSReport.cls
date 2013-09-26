\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JPRCSReport}[2013/06/16 V0.03 Jens Raaby]
% based partly on University of York style by JLJ http://www-users.cs.york.ac.uk/~jeremy/

% Koma-script report style
\PassOptionsToPackage{twoside}{typearea}
\LoadClass[11pt,a4paper,twoside,abstraction,numbers=noenddot,BCOR13mm,DIV=calc]{scrreprt}


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

\typearea[current]{calc} % force page layout recalculation after
                         % changing all the fonts
                         
                         
%\date{\fbox{\Huge DRAFT PROCESSED \today}}
\titlehead{The University of Copenhagen\hfill Department of Computer Science}


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
  \old@maketitle%
  % \ifx\JPRREPORT@abstract\undefined%
%     \ClassError%
%     {JPRCSReport}%
%     {No abstract!}%
%     {Declare an abstract in the preamble using \protect\abstract{Text}.}
%   \else%
%     \begin{old@abstract}%
%       \JPRREPORT@abstract%
%     \end{old@abstract}%
%   \fi%
   \microtypesetup{protrusion=false}%
  \tableofcontents%  
  \microtypesetup{protrusion=true}%
}

\AtBeginDocument{%
  \nonfrenchspacing%
}
