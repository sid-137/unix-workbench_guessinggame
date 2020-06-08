all: README

README:
	echo "# The Unix Workbench - Assignment" > README.md
	echo "" >> README.md
	echo "**Last make:** $$(date)" >> README.md
	echo "" >> README.md
	echo "**Number of lines in guessinggame.sh**: $$(wc -l < guessinggame.sh)">> README.md

clean:
	rm README.md