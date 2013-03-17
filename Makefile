all: node_modules lib lib/index.js

node_modules: package.json
	@npm install

lib:
	@mkdir -p lib

lib/index.js: src/index.coffee
	coffee -bcj $@ $<

clean:
	@rm -rf lib

.PHONY: clean