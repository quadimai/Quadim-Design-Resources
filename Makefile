.phony: default install list

EXPORTS = \
	exports/quadim.sass \
	exports/quadim.gpl \
	exports/quadim.html \
	exports/quadim.txt \
	README.md


default: $(EXPORTS)

install:
	npm install

list:
	@bin/builder --list

README.md: templates/README.hbs palette.json
	@bin/builder -o md > $@

exports/quadim.txt: templates/txt.hbs palette.json
	@bin/builder -o txt > $@

exports/quadim.html: templates/html.hbs palette.json
	@bin/builder -o html > $@

exports/quadim.gpl: templates/gpl.hbs palette.json
	@bin/builder -o gpl > $@

exports/quadim.scss: templates/sass.hbs palette.json
	@bin/builder -o sass > $@

package: $(EXPORTS) palette.json
	@cp -f palette.json packages/colors/lib/palette.json
	@bin/builder -o sass > packages/colors/sass/vars.sass

