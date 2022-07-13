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

exports/quadim.txt: palette.json
	bin/builder -o txt > $@

exports/quadim.html: palette.json
	bin/builder -o html > $@

exports/quadim.gpl: palette.json
	bin/builder -o gpl > $@

exports/quadim.css: palette.json
	bin/builder -o css > $@
