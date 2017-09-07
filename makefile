all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "**make** was run at:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "number of lines of code in **guessinggame.sh**:" >> README.md
	wc -l guessinggame.sh >> README.md
