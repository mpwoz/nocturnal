publish: build
	cd public && git add --all && git commit -m "auto publish" && git push

build:
	hugo --theme=dimension

server:
	hugo server --theme=dimension
