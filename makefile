# the name of the article file (without extension)
ARTICLE = docker_meetup_aot

all: prepare
	cd temp && pdflatex $(ARTICLE).tex
	mv -f temp/$(ARTICLE).pdf .
	echo created $(ARTICLE).pdf

# copy all files required by latex to the temp dir
prepare:
	mkdir -p temp
	cp -r docs/* temp
	-cp -r templates/* temp
	-cp -r figures/* temp

# cleanup output and temp files
clean:
	-rm -f $(ARTICLE).pdf
	rm -fr temp/*
