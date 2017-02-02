publish:
	hugo --theme=dimension
	cd public
	git ci -am "Automatic build"
	git push

server:
	hugo --theme=dimension
