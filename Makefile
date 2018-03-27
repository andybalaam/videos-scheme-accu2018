
TARGET_PDF=scheme-accu2018.pdf
TARGET_HTML=scheme-accu2018.html
PDF_FIGURES=list-of-pairs.svg.pdf
TARGETS=${TARGET_PDF} ${TARGET_HTML} ${PDF_FIGURES}

FILTERS=--filter pandoc-emphasize-code --filter beamer-rename-svg-to-pdf

all: ${TARGETS}

%.svg.pdf: %.svg
	inkscape --export-pdf $@ $<

%.pdf: %.md ${PDF_FIGURES}
	pandoc $< ${FILTERS} -t beamer -V theme:metropolis -o $@

%.tex: %.md
	pandoc $< ${FILTERS} -t beamer -V theme:metropolis -o $@

%.html: %.md
	pandoc $< ${FILTERS} -t revealjs -V theme=simple-andyb -V transition=none --self-contained -o $@

view-pdf: ${TARGET_PDF}
	xdg-open ${TARGET_PDF}

view-html: ${TARGET_HTML}
	xdg-open ${TARGET_HTML}

clean:
	rm -f ${TARGETS} ${PDF_FIGURES}

setup:
	sudo apt install pandoc latex*-bin texlive-fonts-extra python3 inkscape
	wget 'https://github.com/owickstrom/pandoc-emphasize-code/releases/download/v0.2.3/pandoc-emphasize-code-linux-ghc8-pandoc-1-19.tar.gz'
	tar -xzf pandoc-emphasize-code-linux-ghc8-pandoc-1-19.tar.gz
	mv pandoc-emphasize-code ~/bin/

reveal:
	wget 'wget 'https://github.com/hakimel/reveal.js/archive/3.6.0.tar.gz'
	tar -xzf 3.6.0.tar.gz
	mv reveal.js-3.6.0 reveal.js
