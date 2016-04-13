%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%									%
%!TEX encoding = UTF-8 Unicode						%
%									%
% Classe básica feita para a Editora Hedra.				%
% Autor: Marcelo Coraça de Freitas <marcelo.batera@gmail.com>		%
%									%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%									%
% Criado em: Março de 2007						%
% Versão 2.2: Dezembro/2008						%					%
% Por: Marcelo C. de Freitas, Jorge Sallum				%
%									%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hedrabook}[2007/03/16 (v.2.2) Formato Básico de Livros da Editora Hedra]


% Usamos na montagem do layout
\RequirePackage{calc}
\RequirePackage{textcase}
\RequirePackage[a4paper,dvips=false,pdftex=false,vtex=false]{geometry}

\LoadClassWithOptions{book}

\RequirePackage{bolso}

%Epigraph
%\renewcommand{\epigraphflush}{flushleft}  % ativar se quiser jogar para a esquerda
%\renewcommand{\textflush}{flushright}
\renewcommand{\epigraphsize}{\footnotesize}
\setlength{\epigraphwidth}{.7\textwidth}
\renewcommand{\@epirule}{\kern3ex}

%%%%%%%%%%%%%
% FootNotes %
%%%%%%%%%%%%%
\def\@makefnmark{\hbox{\normalfont{\textsuperscript{\@thefnmark}}}}
\renewcommand\@makefntext[1]{%
	\noindent\@makefnmark \hspace{1mm} \frenchspacing#1%
}
\renewcommand\footnoterule{}

\renewcommand\part{%
 \setcounter{footnote}{0}
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}\MakeTextLowercase{#1}}%
    \else
      \addcontentsline{toc}{part}{\MakeTextLowercase{#1}}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \huge \scshape \MakeTextLowercase{#2}\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \huge \scshape \MakeTextLowercase{#1}\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}


\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
		      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		      \refstepcounter{chapter}	  %Jorge: Coloquei esta linha para zerar notas por cap. qq. caso
                      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter 
        \par\nobreak
        \vskip 10\p@
      \fi
    \fi
    \interlinepenalty\@M
    \huge \scshape \baselineskip=.7\baselineskip \MakeTextLowercase{#1}\par\nobreak
    \vskip 20mm
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \huge \scshape \baselineskip=.7\baselineskip \MakeTextLowercase{#1}\par\nobreak
    \vskip 40\p@
  }}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \section, \paragraph, \subparagraph %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\renewcommand\section{\@startsection%
   {section}{1}%
   {\z@}% indent
   {3.5ex \@plus1ex \@minus.5ex}% beforeskip (se < 0, sem indentação na sequência)
   {.2ex}% afterskip (se < 0, run-in head)
   {\linespread{0.8}\raggedright\normalfont\Large\scshape\MakeTextLowercase}% estilo
}


\renewcommand\subsection{\@startsection{paragraph}{43}{\z@}%
                                    {1ex \@plus.5ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalsize\centering\itshape}}

\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {1ex \@plus.5ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {1ex \@plus.5ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tamanho do Papel 							%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Tamanho Bolso
\geometry{textheight=148mm,%
		top=18mm,
		left=14mm,
		textwidth=83mm,%
		paperwidth=113mm,%
		paperheight=175mm}

% Para textos maiores (aperta o cabeço e aumenta a fonte)
\DeclareOption{largetext}{
\geometry{textheight=153mm,
	  left=12mm,
	  textwidth=88mm}
}

%%%%%%%%%%%%%%%%%%%%%%%
% Mudanças do Roberto %
%%%%%%%%%%%%%%%%%%%%%%%

\setlength\parskip{0pt}%

% tolerância com espaços
\tolerance=600
\emergencystretch=1pc

% quebras de palavrinhas
\lefthyphenmin=2
\righthyphenmin=2

\widowpenalty=10000
\clubpenalty=2000
\brokenpenalty=5000

\setlength{\epigraphwidth}{.7\textwidth} 

% Fontes e Tamanho da Letra %
\DeclareOption{noendpart}{
		\renewcommand{\@endpart}{
		\vspace{.60\textheight}\pagebreak	
		}
    }          
          


\ProcessOptions\relax
