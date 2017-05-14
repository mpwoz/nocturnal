publish: build
	cd public && git add --all && git commit -m "auto publish" && git push

build:
	hugo --theme=dimension

server:
	hugo server --theme=dimension

install:
	apt-get install hugo
	# install theme
	mkdir themes
	cd themes
	git clone https://github.com/sethmacleod/dimension.git
	# clone published gh-pages branch into public/ subdirectory
	git worktree add -B gh-pages public origin/gh-pages
