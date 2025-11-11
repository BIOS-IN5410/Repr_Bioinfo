# local files only
all:
	quarto render

# Update the website
publish:
	quarto publish gh-pages