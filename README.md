# dhbw-beamer

LaTeX [Beamer](https://ctan.org/pkg/beamer) Klasse gemäß [Grafische Gestaltungsrichtlinien für die Duale Hochschule Baden-Württemberg](https://www.google.com/search?q=Grafische+Gestaltungsrichtlinien+f%C3%BCr+die+Duale+Hochschule+Baden-W%C3%BCrttemberg) oder so ähnlich:

* [Beispielinhalt](Beispiele.tex)
* [Vorschau](Index.pdf)

### Nutzungshinweise

Erforderliche Dateien:

* `DHBW.*`
* `*DHBW.sty`

PDF erzeugen:

`latexmk -pdf -outdir=Senke Quelle.tex`

### Minimalbeispiele

Beamer Class mit allen Extras:

```
\documentclass{DHBW}

\title{Lorem Ipsum}
\author{Nomen Nescio}
\institute[DHBW Karlsruhe]{karlsruhe.dhbw.de}
\date{\today}

\begin{document}

  ...

\end{document}
```

Nur Beamer Theme ohne Extras:

```
\documentclass{beamer}
\usetheme[header=true,footer=true]{DHBW}

\title{Lorem Ipsum}
\author{Nomen Nescio}
\institute[DHBW Karlsruhe]{karlsruhe.dhbw.de}
\date{\today}

\begin{document}

  ...

\end{document}
```

Optionen `header` und `footer` können wahlweise weggelassen werden, diese sind standardmäßig eingeblendet.
