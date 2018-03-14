
TARGET=scheme-accu2018.pdf

all: ${TARGET}

%.pdf: %.md
	pandoc $< -t beamer -o $@

view: ${TARGET}
	xdg-open ${TARGET}

clean:
	rm -f ${TARGET}
