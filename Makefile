
install:
	npm install

templates/txt.hbs: palette.json
	bin/builder
