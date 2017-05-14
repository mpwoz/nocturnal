publish: build
	cd public && git add --all && git commit -m "auto publish" && git push

build:
	hugo

server:
	hugo server

install:
	apt-get install hugo
	# clone published gh-pages branch into public/ subdirectory
	git worktree add -B gh-pages public origin/gh-pages
