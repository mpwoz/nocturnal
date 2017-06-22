# Don't actually use this. Builds are handled by Travis automatically on push.
publish: build
	cd public && git add --all && git commit -m "auto publish" && git push

build:
	gulp scss
	hugo

server:
	# Todo figure out how to add gulp watch to this
	hugo server

install:
	apt-get install hugo npm
	# clone published gh-pages branch into public/ subdirectory
	# Probably unnecessary now, with CI builds.
	#git worktree add -B gh-pages public origin/gh-pages
