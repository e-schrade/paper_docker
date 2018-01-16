FROM debian:stable-slim

RUN apt-get update &&\
	apt-get install -y --no-install-recommends latexmk make gnuplot-nox texlive-pictures texlive-science texlive-publishers texlive-lang-english texlive-latex-extra &&\
	apt-get --purge remove -y .\*-doc$ && \
	apt-get clean -y && \
	rm -rf /var/lib/apt/lists/
