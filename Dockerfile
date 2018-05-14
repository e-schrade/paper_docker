FROM debian:stable-slim

RUN apt-get update &&\
	apt-get install -y --no-install-recommends latexmk make gnuplot-nox texlive-pictures texlive-science texlive-publishers texlive-lang-english texlive-latex-extra texlive-generic-extra python3 python3-pip python3-tk &&\
	apt-get clean -y &&\
	pip3 install colour-science --user &&\
	rm -rf /var/lib/apt/lists/
