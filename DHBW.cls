% Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DHBW}[2022/08/01 DHBW Beamer Class]
\LoadClassWithOptions{beamer}

% Theme
\usetheme[header=true,footer=true]{DHBW}

% Packages
\usepackage{blindtext} % Blindtext:    \blindtext, \Blindtext
\usepackage{csquotes}  % Quotes:       \enquote{}
\usepackage{environ}   % Environments: \NewEnviron{}[][0]
\usepackage{graphicx}  % Graphics:     \includegraphics[]{}
\usepackage{listings}  % Listings:     \lstinline!!, \begin{lstlisting} \end{lstlisting}, \lstinputlisting{}
\usepackage{tabulary}  % Tables:       \begin{tabulary}{\textwidth}{} \end{tabulary}
\usepackage{tcolorbox} % Boxes:        \begin{tcolorbox}[] \end{tcolorbox}

% Boxes
\tcbuselibrary{skins}

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

% Placeholder for missing block title
\def\notitle{\vspace*{-1ex}}

% Sticker: optionally rotated box with frame, shadow and centered content
\NewEnviron{sticker}[1][0]
{
  \tcbset{%
    boxrule=0.5pt,
    colback=white,
    colframe=dhbw-gray-light,
    drop lifted shadow,
    enhanced,
    sharp corners,
    tikz={rotate=#1,transform shape}
  }
  \begin{center}
    \begin{tcolorbox}[hbox]
      \BODY
    \end{tcolorbox}
  \end{center}
}

\endinput
