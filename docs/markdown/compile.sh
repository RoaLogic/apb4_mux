#!/bin/bash

# Run from markdown directory only
curdir=${PWD##*/}

if [ "$curdir" != "markdown" ]
then
	echo "Must run from markdown directory"
    exit
fi

# Pre-process LaTeX Source
for entry in ../tex/*.tex
do
  	base="${entry##*/}"
	./lpp.pl $entry > $base
done


# Generate new Markdown
cd ..
pandoc 	--atx-headers \
		--default-image-extension=png \
		-t markdown_github \
		-B markdown/frontmatter.md \
		--toc \
		--toc-depth=1 \
		-o ../DATASHEET.md \
		APB4-Multiplexer-Markdown.tex

cd markdown

# Remove Preprocessed LaTeX source
rm *.tex
