FROM codercom/code-server:latest

USER root

RUN apt-get update && apt-get install -y \
    curl \
    tar \
    ca-certificates \
    pandoc \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-latex-base \
    texlive-luatex \
    texlive-xetex \
    texlive-fonts-extra \
    texlive-science \
    biber \
    latexmk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none", "/workspace"]