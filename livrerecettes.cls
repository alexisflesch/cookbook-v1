\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{livrerecettes}[2010/03/16 livre recettes v1.0]


%This class is a slight modification of Maurizio Loreti's work.
%I left his comments for people interested in (re)modifying it.
%Contact : alexis.flesch@gmail.com



% Recipe class; intended to be used to produce a ``book''
% of recipes---so that loads book.cls .  This file is in
% the public domain, and comments/additions/modifications
% are welcomed to be EMailed to me, i.e. to:
%
% Author: Maurizio Loreti, aka MLO or (HAM) I3NOO
% Work:   University of Padova - Department of Physics
%         Via F. Marzolo, 8 - 35131 PADOVA - Italy
% Phone:  ++39(49) 827-7216     FAX: ++39(49) 827-7102
% EMail:  loreti@padova.infn.it
% WWW:    http://mvxpd5.pd.infn.it/wwwcdf/mlo.html
%
% The \part, \chapter, \section and \subsection commands
% work as usual; \subsubsection commands are used for
% ``recipes'' as units, and are not numbered but (by
% default) entered in the .toc file.
%
% The recipe (a.k.a. subsubsection header) is typeset in
% a style defined with the command \rechead; the default
% is Large, horizontally centered, bold sans-serif: and
% the user can change that setting with a suitable
% \renewcommand{\rechead} .
%
% If e.g. \section and \subsection commands are not used
% in the text, the large indentation of the \subsubsection
% items in the Table of Contents may be ugly; in that case,
% you should redefine appropriately \l@subsubsection .
% The book.cls definition is:
% \newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}} ;
% the second parameter (7.0em) is the initial skip, and
% the third (4.1em) is the length for the subsubsection
% number field (if the subsubsections are to be numbered).
% As an example, a redefinition of \l@subsubsection may look
% like:
% \makeatletter
% \renewcommand*\l@subsubsection{\@dottedtocline{3}{3em}{4.1em}}
% \makeatother
%
% A specific command \recipe{...} is defined as an alias
% for a \subsubsection{...} followed by two rules across
% the whole page and by a vertical space.
%
% Another command, \ingred{...}, is defined to typeset a
% list of ingredients (the \ldots) with the italic font,
% inside a ``quote'' environment and  after an ``ingredient
% header'' \inghead---empty by default, and that can be
% redefined by the user with, e.g., a
% \renewcommand{\inghead}{\textbf{Ingredients (4 persons)}:\ }
% (note the trailing space).
%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}
\RequirePackage{vmargin}
\RequirePackage{manfnt}
\RequirePackage{stmaryrd}
% \usepackage{color}
\RequirePackage{marvosym}
\RequirePackage{amsthm}
\pagestyle{plain}


\setcounter{secnumdepth}{2}	% subsubsections not numbered
\setcounter{tocdepth}{3}	% subsubsections in the .toc file


%%%%%%%%%%%%%% Accès rapide à certaines commandes %%%%%%%%%%%%%%%%%%%%%%
\newcommand{\puces}{$~~\leftslice$}
\newcommand{\lpage}{.942\linewidth}
\newcommand{\hpage}{.492\textheight}
\newcommand{\niveaugris}{1}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\special{papersize=25cm,28cm}



% \definecolor{gris}{gray}{\niveaugris}
\newcommand{\rechead}
    {\centering\normalfont\Large\sffamily\bfseries}

\newcommand{\bsi}[2]{\fontsize{#1}{#2}\usefont{T1}{pbsi}{xl}{n}}
\renewcommand{\rechead}{\centering\bsi{24pt}{30pt}}

\renewcommand{\subsubsection}
    {\@startsection{subsubsection}{3}{\z@}%
    {-5ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\rechead}}

\newcommand{\recette}[1]{\subsubsection{#1}%
    \vspace{.1cm}
    \hrule height0.75pt width\hsize\vspace*{1\p@}%
    \hrule height0.25pt width\hsize%
    \nobreak
    \vskip\parskip \vspace{.3cm}}

\newcommand{\inghead}{\relax}

\newcommand{\temps}[2]
    {{\list{}{\rightmargin 1em\leftmargin 1em}%
    \item[]\textit{\textbf{\huge \Clocklogo \normalsize \hspace{\stretch{1}} Pr\'eparation} : #1} \hspace{\stretch{2}} \textit{\textbf{Cuisson} : #2}\endlist}%
    \vspace{.2cm}\hrule height0.25pt width\hsize \vspace{.2cm}}

\newcommand{\ingredients}[2][]
    {{\list{}{\rightmargin 1em\leftmargin 1em}%
    \item[]\textit{\textbf{Ingr\'edients \@ifnotempty{#1}{(#1) }}: \vspace{-.3cm}\begin{multicols}{2}\begin{itemize}\renewcommand{\labelitemi}{\puces} #2 \end{itemize}\end{multicols}}\endlist}%
    \vspace{.2cm} \hrule height0.25pt width\hsize \vspace{.3cm}}



\newenvironment{nouvellerecette}%
    {%
     \vspace{\stretch{1}}%
     \begin{minipage}[!h][\hpage][t]{\lpage}%
    }%
    {%
     \end{minipage}%
     \vspace{\stretch{1}}%
     \newline%
    }
\newcommand{\degrees}{$^\circ$}

\newcommand{\attention}[1]{\vspace{.3cm} \textdbend ~~ #1}