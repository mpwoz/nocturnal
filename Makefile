publish:
	hugo --theme=dimension
	cd public
	git add .
	git ci -m "Automatic build"
	git push

server:
	hugo server --theme=dimension
