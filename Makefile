.PHONY:  setup dev build lint preview clean-build clean

setup:
	yarn

dev:
	yarn dev

build: clean-build
	yarn build

lint:
	yarn run eslint --ext .jsx,.js .

preview: build
	yarn preview

clean-build:
	rm -rf ./dist

clean: clean-build
	rm -rf node_modules
