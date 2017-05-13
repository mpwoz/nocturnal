publish: build
	cd public && git add --all && git commit -m "auto publish" && git push

build:
	hugo --theme=dimension

server:
	hugo server --theme=dimension

install:
	apt-get install hugo
	mkdir themes
	cd themes
	git clone https://github.com/sethmacleod/dimension.git
