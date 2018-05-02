# the name of the presentation file (without extension)
ARTICLE = presentation

all: prepare
	cd temp && pdflatex $(ARTICLE).tex
	mv -f temp/$(ARTICLE).pdf .
	echo created $(ARTICLE).pdf

# copy all files required by latex to the temp dir
prepare:
	mkdir -p temp
	cp -r tex/* temp
	-cp -r templates/* temp
	-cp -r figures/* temp
	-cp -r tables/* temp

# cleanup output and temp files
clean:
	-rm -f $(ARTICLE).pdf
	rm -fr temp/*
