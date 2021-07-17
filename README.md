# dhbw-beamer

LaTeX [Beamer](https://ctan.org/pkg/beamer) Klasse gemäß [Grafische Gestaltungsrichtlinien für die Duale Hochschule Baden-Württemberg](https://www.google.com/search?q=Grafische+Gestaltungsrichtlinien+f%C3%BCr+die+Duale+Hochschule+Baden-W%C3%BCrttemberg) oder so ähnlich:

* [Beispielinhalt](Beispiele.tex)
* [Vorschau](Index.pdf)

### Nutzungshinweise

Erforderliche Dateien:

* `DHBW.*`
* `*DHBW.sty`

PDF Generierung:

`latexmk -pdf -outdir=Senke Quelle.tex`

### Minimalbeispiele

Beamer Class:

```
\documentclass[smaller]{DHBW}

\title{Lorem Ipsum}
\author{Nomen Nescio}
\institute[DHBW Karlsruhe]{karlsruhe.dhbw.de}
\date{\today}

\begin{document}

  ...

\end{document}
```

Beamer Theme:

```
\documentclass[smaller]{beamer}
\usetheme[header=true,footer=true]{DHBW}

\title{Lorem Ipsum}
\author{Nomen Nescio}
\institute[DHBW Karlsruhe]{karlsruhe.dhbw.de}
\date{\today}

\begin{document}

  ...

\end{document}
```

Optionen `header` und `footer` können wahlweise weggelassen werden.
Die jeweiligen Navigationselemente sind standardmäßig eingeblendet.
