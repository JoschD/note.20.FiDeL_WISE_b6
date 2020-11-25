% CERN Accelerator and Technology Sector Note document class Version 0.1

%  Previous history of this file:
%  CERN SL Division LHC Project Note style in LaTeX format
%  CERN SL Division SL MD Note style in LaTeX format
%  Version 1.0  (14/2/95)  JMJ
%  Adapted to latex2e from the old slmdnote.sty, just a rather minor
%  modification of 12pt article class.
%
%  Last Modification: 14/2/95
%
%  Version 1.0  (13/9/95)  AFG and BAT :)
%  Adapted to latex2e from the old slmdnote.cls
%
%  Version 1.1  (01/07/97) Scott Berg
%    Fixed \@maketitle to do line spacing right and avoid underfull hbox
%    complaints
%
%  Version 1.2  (31/07/98) Frank Schmidt
%               (06/10/98) Frank Schmidt fiddled a bit
%    Disclaimer added as numberless footnote
% Some fixes John Jowett 2/6/2010
%
% Modified into a first version of ATS Note  John Jowett 1/3/2011
% Some of the things done:
%   remove health warning footnote
%   change LHC magnet logo to CERN logo
%   use more modern options and include more standard packages (eg hyperref, amsmath, isodate)
%   fix up title block a bit
%
% Version 1.4  (09/01/2020) Joschua Dilly 
% Modified for my purposes again
% Changes:
%  - all the useful colors
%  - better itemize
%  - better captions, better linking, better referencing
%  - added way to use appendix
%  - other usefull packages
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
\def\fileversion{1.4}
\def\filedate{2020/01/09}
\def\docdate {2020/01/09}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cernatsnote}%
[\filedate\space version \fileversion]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[12pt,a4paper]{article}

% Graphics ---
%\RequirePackage{graphics}
\RequirePackage[dvips]{rotating,graphicx}  % use graphics 
\RequirePackage{float}                     % enables float options (positioning of elements)
\RequirePackage{grffile}                   % allows filenames with multiple dots
\RequirePackage{placeins}                  % enables \FloatBarrier
\RequirePackage{tikz}                      % draw things

% Fonts ---
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{ragged2e}                 % to use \justify
\RequirePackage{siunitx}                  % use si units with \si{unit} or \SI{#}{unit}
\RequirePackage{latexsym}                 % more symbols

% Math ---
\RequirePackage{amsmath}
\RequirePackage{mathtools}                      % allows mulit-column cases*
\RequirePackage{bm}                             % bold math symbols

% Colors ---
\RequirePackage{xcolor}                    % make things rainbow

\definecolor{cern}{RGB}{0,51,160}
\definecolor{Peptalk}{RGB}{0,96,168}
\definecolor{GreenBellPepper}{RGB}{48,144,0}
\definecolor{Snowflake}{RGB}{240,240,240}
\definecolor{BlackCat}{RGB}{48,48,48}
\definecolor{JoustBlue}{RGB}{72,168,255}

\definecolor{AtlasRed}{RGB}{255,72,91}
\definecolor{AtlasBlue}{RGB}{19,127,191}
\definecolor{AtlasLightBlue}{RGB}{52,166,222}
\definecolor{AtlasGreen}{RGB}{39,165,114}
\definecolor{AtlasOrange}{RGB}{240,144,16}
\definecolor{AtlasYellow}{RGB}{250,218,28}

\definecolor{CernRed}{HTML}{e15e32}
% \definecolor{CernRed}{HTML}{e8501d}
\definecolor{CernOrange}{HTML}{f1862e}
\definecolor{CernBlue}{HTML}{0033a0}
\definecolor{CernNiceBlue}{HTML}{0669b2}
\definecolor{CernDarkBlue}{HTML}{1c446b}
\definecolor{CernLightBlue}{HTML}{15b3da}
\definecolor{CernPurple}{HTML}{6e2466}
% \definecolor{CernPurple}{HTML}{951a80}

\definecolor{CernYellow}{HTML}{ffd335}
\definecolor{CernLightGreen}{HTML}{b2cc35}

% Tables ---
\RequirePackage{colortbl}       % color tables
\RequirePackage{multirow}       % allows multiple rows put into one
\RequirePackage{booktabs}       % hline extensions like \toprule \bottomrule \midrule 

% Itemize ---
\RequirePackage{enumitem} 
\newcommand\tinybullet{\raisebox{0.15em}{\tiny\textcolor{cern}{$\bullet$}}}
\newcommand\footnotebullet{\raisebox{0.15em}{\footnotesize\textcolor{cern}{$\bullet$}}}
\newcommand\smallbullet{\raisebox{0.15em}{\small\textcolor{cern}{$\bullet$}}}
\newcommand\normalbullet{\raisebox{0em}{\textcolor{cern}{$\bullet$}}}
\newcommand\tinycirc{\raisebox{0.15em}{\tiny\textcolor{cern}{$\circ$}}}
\newcommand\footnotecirc{\raisebox{0.15em}{\footnotesize\textcolor{cern}{$\circ$}}}
\newcommand\smallcirc{\raisebox{0.15em}{\small\textcolor{cern}{$\circ$}}}
\newcommand\normalcirc{\raisebox{0em}{\textcolor{cern}{$\circ$}}}
\newcommand\ArrowItem{\raisebox{0.15em}{\textcolor{cern}{$\Rightarrow$}}}
\newcommand\arrowitem{\raisebox{0.15em}{\textcolor{cern}{$\rightarrow$}}}

\setlist[itemize,1]{label=\smallbullet}
\setlist[itemize,2]{label=\footnotecirc}
\setlist[itemize,3]{label=\tinybullet}


% References ---
\RequirePackage{hyperref}
        \hypersetup{
        %backref,            % seems to be already set
        pdfpagemode=UseOutlines ,
        linkcolor=cern,
        citecolor=cern,
        urlcolor=cern,
        %hyperfigures=true,  % seems to be already set
        colorlinks=true
        }

\RequirePackage[nameinlink,capitalize]{cleveref}           % easy referencing 
\RequirePackage[labelfont={color=cern,bf}]{caption}        % allow linebreaks in captions
\RequirePackage{subcaption}                                % allows subfigures 
\captionsetup[subfigure]{skip=0pt}                         % default = 6


% Appendices ---
\RequirePackage[toc,page]{appendix}
\crefname{appsec}{Appendix}{Appendices}  % sets up "appsec" to use with \cref
\Crefname{appsec}{Appendix}{Appendices}  % sets up "appsec" to use with \Cref

\newenvironment{theappendix}{       % write appendix sections in this environment
    \begin{appendices}
    \crefalias{section}{appsec}     % all sections from here on are "appsec"
    \crefalias{subsection}{appsec}  % as are subsections
  }{
    \end{appendices}
}

%\RequirePackage[english]{isodate}        %%% gives dates in non-American format
%\cleanlookdateon %% this is for the english option of isodate

\RequirePackage{geometry}      % for dynamically changing margins 
\RequirePackage{changepage}    % locally adjusting margings

%% not sure how this interacts with a4paper option to article class
%% may not be quite the right thing to do
%% See also LaTeX book p 182
%% Sems to be working for the last 9 years (jdilly)
\setlength{\topmargin}{-1.0cm}
\setlength{\oddsidemargin}{0.1cm}
\setlength{\textwidth}{16.5cm}
\setlength{\textheight}{23.0cm}



% Setting up the first page layout ---------------------------------------

%it uses the following info
%   \email{..}  (electronic mail adress) printed at top left of title page
%   \title{..}
%   \author{..}
%   \date{..}  optional
%   \documentlabel{..}  printed at top right of title page

% You also need to use \begin{document} and \end{document}


\def\section{\@startsection{section}{1}{\z@}{-3.5ex plus -1ex minus
    -.2ex}{2.3ex plus .2ex}{\bfseries\Large}}

\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus -1ex minus
   -.2ex}{1.5ex plus .2ex}{\bfseries\large}}

\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-3.25ex plus
 -1ex minus -.2ex}{1.5ex plus .2ex}{\bfseries\normalsize}}

\def\paragraph{\@startsection
   {paragraph}{4}{\z@}{-2.25ex plus 1ex minus .2ex}{1em}{\normalsize}}
% Sign changes for BEFORE&AFTERSKIP  at 15:09:43 on 30 Nov 1987 by JOWETT
% Makes unnumbered headings without running in to text (subparagraph will
% still do that for you).

\def\subparagraph{\@startsection
     {subparagraph}{4}{\parindent}{3.25ex plus 1ex minus .2ex}
     {-1em}{\normalsize}}


% The value of the counter secnumdepth gives the depth of the
% highest-level sectioning command that is to produce section numbers.
%

\setcounter{secnumdepth}{3}

%-----------------------------------------------------------------------
% Use same font series in contents
\def\l@section#1#2{\addpenalty{\@secpenalty}  % good place for page break
   \addvspace{1.0em plus 1pt}  % space above toc entry
   \@tempdima 1.5em            % width of box holding section number
   \begingroup
     \parindent \z@ \rightskip \@pnumwidth
     \parfillskip -\@pnumwidth
     \bfseries                  % Bold sans serif
%%                         Modified at 17:10:02 on 29 Mar 1989 by JOWETT
     \leavevmode          % TeX command to enter horizontal mode.
     #1\hfil \hbox to\@pnumwidth{\hss #2}\par
   \endgroup}
%-----------------------------------------------------------------------
% Change label style in description environment
\def\descriptionlabel#1{\hspace\labelsep \bfseries #1}
%-----------------------------------------------------------------------
% The abstract Environment (actually generates a Summary)

\def\abstract{\paragraph*{Summary}\small}
\def\endabstract{\par\noindent\rule{\textwidth}{1.5pt}}
\def\endtitlepage{\setcounter{footnote}{0}}

%-----------------------------------------------------------------------
% fancy double line

\def\fancyline{\par\noindent
               \parbox{\textwidth}{
               \setlength{\baselineskip}{1.2mm}
               \rule{\textwidth}{0.8pt}
               \rule{\textwidth}{1.5pt}\par
              }}
%-----------------------------------------------------------------------

\renewcommand\maketitle{%
                % Here we put the document label, email and file
                % name at top right. Defaults are an
                % empty box for email and "Preliminary draft" with
                % time of day and date for the label.  Tabular
                % environments are used to allow for the possibility
                % of multiple line document labels - lines separated
                % by \\ in the argument of \documentlabel - and
                % multiple line email (which could have other uses).
  {\setlength{\arrayrulewidth}{1pt}
    \setlength{\parindent}{0pt}
    \begin{tabular}[t]{@{}p{0.45\textwidth}}
      {
        \protect{\includegraphics[width=20mm]{cernlogo.pdf} }
        }
    \end{tabular}
    \hfill
    \begin{tabular}[b]{r@{}}
      { \normalsize\@documentlabel}\\[1.5ex]
      {\normalsize\@date}\\
      {\normalsize\texttt{\@email}}\\
    \end{tabular}
    \par
    \vskip\baselineskip
    \vskip1ex
    {\bfseries\Large\raggedright\hyphenpenalty=10000\@title\par}
    \vskip\baselineskip
    {\large\raggedright\hyphenpenalty=10000\@author\par}
    \vskip\baselineskip
    \footnotesize Keywords:
    \parbox[t]{0.5\textwidth}{\raggedright\hyphenpenalty=10000
      \footnotesize\@keywords
      }
    \hfill\par
    }
  \fancyline
  \endtitlepage
  }
%------------------------------------------------------------------------
% compute the time in hours and minutes; make new variables \timehh and \timemm
%%                            Added at 11:19:59 on 26 Sep 1988 by JOWETT
%
\newcount\timehh\newcount\timemm
\timehh=\time
\divide\timehh by 60 \timemm=\time
\count255=\timehh\multiply\count255 by -60 \advance\timemm by \count255
%
\def\timeofday{\ifnum\timehh<10 0\fi\number\timehh:%
               \ifnum\timemm<10 0\fi\number\timemm
               }

\def\documentlabel#1{\gdef\@documentlabel{\large\bfseries #1}}
                                          % see \@maketitle
\gdef\@documentlabel{\tt Preliminary draft\ \timeofday\ \today}

\def\email#1{\gdef\@email{#1}}          % see \@maketitle
\gdef\@email{\hbox{}}

\def\keywords#1{\gdef\@keywords{#1}}          % see \@maketitle

\gdef\@keywords{{\tt Please supply some suitable keywords!}}





% The \documentlabel, \email and \keywords
% commands do not exist in ordinary LaTeX.

\endinput

