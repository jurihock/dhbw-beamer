% Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DHBW}[2022/08/01 DHBW Beamer Class]
\LoadClassWithOptions{beamer}

% Theme
\usetheme[header=true,footer=true]{DHBW}

% Packages
\usepackage{blindtext} % Blindtext: \blindtext, \Blindtext
\usepackage{csquotes}  % Quotes:    \enquote{}
\usepackage{graphicx}  % Graphics:  \includegraphics[]{}
\usepackage{listings}  % Listings:  \lstinline!!, \begin{lstlisting} \end{lstlisting}, \lstinputlisting{}
\usepackage{tabulary}  % Tables:    \begin{tabulary}{\textwidth}{} \end{tabulary}

% Listings
\lstset
{
  basicstyle=\ttfamily\small,
  breaklines=true,
  breakatwhitespace=false
}

% URLs
\renewcommand\UrlFont\em

% Fonts
\usepackage{ifxetex}
\ifxetex % XeTex

  \usepackage{fontspec,xltxtra,xunicode}

  \setmainfont[Mapping=tex-text]{Helvetica}
  \setsansfont[Mapping=tex-text]{Helvetica}
  \setmonofont[Scale=MatchLowercase]{Courier}

  \usepackage{mathptmx}

  \usepackage{polyglossia}
  \setmainlanguage[babelshorthands=true]{german}

\else % pdfTeX

  \usepackage[utf8]{inputenc}
  \usepackage[T1]{fontenc}

  \usepackage[scaled=0.9]{helvet}
  \usepackage{courier}
  \usepackage{mathptmx}

  \usepackage[german,ngerman]{babel}

\fi

\endinput
