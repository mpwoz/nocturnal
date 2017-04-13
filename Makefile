publish: build
	cd public
	git commit -a -m "auto publish"
	git push

build:
	hugo --theme=dimension

server:
	hugo server --theme=dimension
