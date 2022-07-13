.phony: default install list

install:
	npm install

list:
	@bin/builder --list

templates/txt.hbs: palette.json
	bin/builder
