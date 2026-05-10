# LaTeX

A document formatting system used for PDFs, academic papers, resumes, etc.

You write:

```latex
\section{Experience}
```

instead of manually formatting text.

---

## TeX Live

The full toolkit that provides:

* LaTeX
* compilers (`pdflatex`, `xelatex`, `lualatex`)
* fonts
* packages
* bibliography tools

# Compilers / Engines

## `pdflatex`

Old/classic engine.

* stable
* fast
* weaker font support

---

## `xelatex`

Modern engine.

Best for:

* resumes
* Unicode
* custom fonts

Most modern resume templates use this.

---

## `lualatex`

Modern engine + Lua scripting.

More advanced/extensible.

---

# Latexmk

Automates LaTeX compilation.

Instead of:

```bash
pdflatex
bibtex
pdflatex
pdflatex
```

you do:

```bash
latexmk -xelatex resume.tex
```

Useful commands:

```bash
latexmk -xelatex resume.tex
```

Auto rebuild on save:

```bash
latexmk -xelatex -pvc resume.tex
```

Clean temp files:

```bash
latexmk -c
```

---
