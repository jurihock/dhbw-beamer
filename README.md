# dhbw-beamer

LaTeX Beamer Klasse gemäß [Grafische Gestaltungsrichtlinien für die Duale Hochschule Baden-Württemberg](https://www.google.com/search?q=Grafische+Gestaltungsrichtlinien+f%C3%BCr+die+Duale+Hochschule+Baden-W%C3%BCrttemberg) oder so ähnlich:

* [Beispielinhalt](Inhalt/Beispiele.tex)
* [Vorschau](Index.pdf)

### Nutzungshinweise

Erforderliche Dateien:

* `DHBW.*`
* `*DHBW.sty`

Minimalbeispiel:

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

PDF Generierung:

`latexmk -pdf -outdir=Senke Quelle.tex`
