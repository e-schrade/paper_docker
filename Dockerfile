FROM debian:stable-slim

RUN apt-get update &&\
	apt-get install -y --no-install-recommends latexmk make texlive-pictures texlive-science texlive-publishers texlive-lang-english texlive-latex-extra texlive-generic-extra texlive-fonts-extra texlive-generic-recommended texlive-bibtex-extra &&\
	apt-get clean -y &&\
	rm -rf /var/lib/apt/lists/
