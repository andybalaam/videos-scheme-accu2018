
TARGET_PDF=scheme-accu2018.pdf
TARGET_HTML=scheme-accu2018.html
TARGETS=${TARGET_PDF} ${TARGET_HTML}

all: ${TARGETS}

%.pdf: %.md
	pandoc $< -t beamer -V theme:metropolis -o $@

%.html: %.md
	pandoc $< -t s5 --self-contained -o $@

view-pdf: ${TARGET_PDF}
	xdg-open ${TARGET_PDF}

view-html: ${TARGET_HTML}
	xdg-open ${TARGET_HTML}

clean:
	rm -f ${TARGETS}

setup:
	sudo apt install pandoc latex-bin texlive-fonts-extra
