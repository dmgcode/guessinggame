all: README.md

README.md:
	echo "## File Count Guessing Game" > README.md
	echo "README was created on `date`." >> README.md
	echo "guessinggame.sh contains $(cat guessinggame.sh | wc -l) lines." >> README.md
