% Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DHBW}[2022/08/01 DHBW Beamer Class]
\LoadClassWithOptions{beamer}

% Theme
\usetheme[header=true,footer=true]{DHBW}

% Packages
\usepackage{blindtext} % Blindtext:    \blindtext, \Blindtext
\usepackage{csquotes}  % Quotes:       \enquote{}
\usepackage{environ}   % Environments: \NewEnviron{}[][]{}
\usepackage{graphicx}  % Graphics:     \includegraphics[]{}
\usepackage{listings}  % Listings:     \lstinline!!, \begin{lstlisting} \end{lstlisting}, \lstinputlisting{}
\usepackage{tabulary}  % Tables:       \begin{tabulary}{\textwidth}{} \end{tabulary}

% Placeholder for empty block title
\def\noblocktitle{\vspace*{-1ex}}

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

% Stickers
\usepackage{tcolorbox}
\tcbuselibrary{skins}
\usepackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{\paperwidth}
\setlength{\TPVertModule}{\paperwidth}

% Sticker: optionally rotated white box with frame and shadow
%          (placed inline)
\NewEnviron{sticker}[1][0]
{
  \tcbset{%
    boxrule=0.5pt,
    colback=white,
    colframe=dhbw-gray-light,
    drop lifted shadow,
    enhanced,
    sharp corners,
    tikz={rotate=#1,transform shape},
    tikznode upper
  }
  \begin{center}
    \begin{tcolorbox}[hbox]
      \BODY
    \end{tcolorbox}
  \end{center}
}

% Sidesticker: optionally rotated yellow box with frame and shadow
%              (placed on the top right corner)
\NewEnviron{sidesticker}[1][0]
{
  \tcbset{%
    boxrule=0.5pt,
    colback=yellow!10,
    colframe=yellow!90,
    drop lifted shadow,
    enhanced,
    sharp corners,
    tikz={rotate=#1,transform shape},
    tikznode upper
  }
  \begin{textblock}{0.96}(0, 0.03)
    \begin{flushright}
      \begin{tcolorbox}[hbox]
        \BODY
      \end{tcolorbox}
    \end{flushright}
  \end{textblock}
}

\endinput
