.phony: default install list

default: \
	exports/quadim.txt \
	exports/quadim.html \
	exports/quadim.gpl \
	exports/quadim.css

install:
	npm install

list:
	@bin/builder --list

README.md: templates/README.hbs palette.json
	@bin/builder -o md README.md

exports/quadim.txt: templates/txt.hbs palette.json
	@bin/builder -o txt > $@

exports/quadim.html: templates/html.hbs palette.json
	@bin/builder -o html > $@

exports/quadim.gpl: templates/gpl.hbs palette.json
	@bin/builder -o gpl > $@

exports/quadim.css: templates/css.hbs palette.json
	@bin/builder -o css > $@
